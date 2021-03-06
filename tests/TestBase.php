<?php

namespace test;

require_once __DIR__ . '/../dcr/bootstrap/init.php';

use app\Admin\Model\Config;
use app\Admin\Model\Model;
use app\Admin\Model\User;
use app\Index\Model\Install;
use dcr\facade\Db;
use Doctrine\DBAL\Types\Types;
use PHPUnit\Framework\TestCase;

class TestBase extends TestCase
{
    public function testConfig()
    {
        $config = new Config();

        $modelConfigList = $config->getConfigList(0, 'model');
        //dd($modelConfigList);

        $this->assertEquals(3, count($modelConfigList));

        //$this->assertEquals(0, count($modelConfigList['info']));
        //$this->assertEquals(3, count($modelConfigList['product']));
        //$this->assertEquals(0, count($modelConfigList['news']));
    }

    public function testUser()
    {
        $user = new User();
        $userList = $user->getList();

        //判断是不是3个user
        $userCount = count($userList);
        $this->assertEquals(3, $userCount);

        //判断是不是3个有
        $usernameList = array_keys(array_column($userList, 'username', 'username'));
        //dd($usernameList);
        $this->assertTrue(in_array('admin', $usernameList));
        $this->assertTrue(in_array('张三', $usernameList));
        $this->assertTrue(in_array('李四', $usernameList));

        //有没有空密码的
        $userList = $user->getList(array('col' => 'id', 'where' => 'char_length(password)<1'));
        $this->assertEquals(0, count($userList));

        //有没有空的user role config
        $sql = "SELECT user_role_config.id FROM user_role_config left join `user` on u_id=`user`.id where `user`.id is null";
        $list = Db::query($sql);
        /*if (count($list) > 0) {
            dd($list);
        }*/
        $this->assertEquals(0, count($list));
    }

    public function testRole()
    {
        $user = new User();

        //是不是2个角色
        $roleList = $user->getRoleList();
        $this->assertEquals(2, count($roleList));

        //admin是不是管理员
        $adminInfo = $user->getInfo('admin');
        $userRole = $user->getRoleConfigList($adminInfo['id']);
        /*echo Db::getLastSql();
        dd($userRole);*/
        $userRole = current($userRole);
        $this->assertEquals(1, $userRole['u_id']);
    }

    public function testModel()
    {
        $model = new Model();

        //分类数目
        $modelProCategoryList = $model->getCategoryList('product');
        $modelNewsCategoryList = $model->getCategoryList('news');
        $modelInfoCategoryList = $model->getCategoryList('info');

        $this->assertEquals(2, count($modelProCategoryList));
        $this->assertEquals(2, count($modelNewsCategoryList));
        $this->assertEquals(1, count($modelInfoCategoryList));

        //把有图片的去掉
        $modelList = $model->getList(array('where' => 'char_length(ml_pic_path)>1'));
        $this->assertEquals(0, count($modelList));

        //list数量
        $modelList = $model->getList(array(
            'requestAddition' => 1,
            'col' => 'model_list.id,ml_title,model_addition.id'
        ));
        $this->assertEquals(11, count($modelList));

        //是否有以下几个标题
        $modelTitleList = array_column($modelList, 'ml_title', 'ml_title');

        $this->assertTrue(in_array('联系我们', $modelTitleList));
        $this->assertTrue(in_array('关于我们', $modelTitleList));
        $this->assertTrue(in_array('站内广告优化策略：ACOS应该这样解读才合适', $modelTitleList));

        //检测model三表是不是有空数据
        $sql = "select model_addition.id from model_addition left join model_list on ma_ml_id=model_list.id where model_list.id is null";
        $list = Db::query($sql);
        $this->assertEquals(0, count($list));

        $this->assertFalse(count($list) > 0);
        $sql = "select model_field.id from model_field left join model_list on mf_ml_id=model_list.id where model_list.id is null";
        $list = Db::query($sql);
        $this->assertEquals(0, count($list));
    }

    /**
     * 安装文件检测
     */
    public function testInstallFiles()
    {
        //测试文件名对不对
        $clsInstall = new Install();
        $dirList = array(
            $clsInstall->getSqlFilePath(),
        );
        foreach ($dirList as $sqlPath) {
            $fileList = scandir($sqlPath);
            foreach ($fileList as $fileName) {
                if (!in_array($fileName, array('.', '..'))) {
                    $fileArr = explode('_', $fileName);
                    $this->assertEquals('dcrphp', $fileArr[0]);
                    $this->assertFalse(strpos(file_get_contents($sqlPath . DS . $fileName), 'REATE DATABASE'));
                }
            }
        }

        //判断lock文件存在不存在
        $this->assertTrue(file_exists($clsInstall->getLockFile()));
    }

    /**
     * 检测系统的默认配置项
     */
    public function testDefaultConfig()
    {
        $config = config('');
        $this->assertEquals(0, $config['app']['debug']);
    }

    /**
     * 检查数据库
     * @throws \Exception
     */
    public function testDatabase()
    {
        $this->assertTrue(true);
        $tableNameList = array();
        $tables = Db::getTables();
        foreach ($tables as $table) {
            $columns = $table->getColumns();
            foreach ($columns as $column) {
                if (!$column->getNotNull()) {
                    continue;
                }
                if (in_array(strtolower($column->getName()), array('id'))) {
                    continue;
                }
                $type = trim(strtolower($column->getType()));
                if (in_array($type, array('\text'))) {
                    continue;
                }
                $default = $column->getDefault();
                if (!isset($default)) {
                    echo "-{$table->getName()}-{$column->getName()}-{$column->getType()}-set error;";
                    $this->assertTrue(false);
                }
            }
        }
    }
}
