<?php
/**
 * Created by junqing124@126.com.
 * User: dcr
 * Date: 2019/9/18
 * Time: 14:04
 */

namespace app\Admin\Controller;

use app\Admin\Model\Factory;
use app\Admin\Model\Common;
use dcr\Response;
use dcr\Session;
use dcr\View;
use app\Admin\Model\Admin;
use app\Admin\Model\User;
use app\Admin\Model\Config;
use dcr\Safe;

class Index
{
    private $model_name = '首页';

    /**
     * 首页
     * @11log 这里改成@log可以看效果
     * @return mixed
     * @throws \Exception
     */
    public function index()
    {
        /*cache('test_key', 111);
        var_dump( cache('test_key') ) ;
        exit;*/
        /*dd($_SESSION);
        exit;*/
        $assignData = array();
        $version = config('info.version');
        $appName = config('info.name');
        $assignData['version'] = $version;
        $assignData['app_name'] = $appName;
        $assignData['page_title'] = '首页';
        $assignData['page_model'] = $this->model_name;
        /*dd($assignData);
        exit;*/
        return Factory::renderPage('index/index', $assignData);
    }

    /**
     * @return mixed
     * @throws \Exception
     */
    public function welcome()
    {
        $assignData = array();
        $assignData['page_title'] = '欢迎页面';
        $assignData['page_model'] = $this->model_name;

        //获取用户信息
        $user = new User();
        $userInfo = $user->getInfo(Session::_get('username'));
        $assignData['user_info'] = $userInfo;
        $assignData['db_type'] = env('MYSQL_DRIVER', 'mysql');
        $version = config('info.version');
        $assignData['version'] = $version;

        return Factory::renderPage('index/welcome', $assignData);
    }

    /**
     * 退出
     */
    public function logout()
    {
        $user = new User();
        $user->logout();
        /*dd($_SESSION);
        exit;*/
        Response::_redirect('/admin');
    }

    /**
     * @param View $view
     * @return string
     * @throws \Throwable
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function login(View $view)
    {
        $assignData = array();
        $assignData['page_title'] = '登陆页';
        $assignData['page_model'] = $this->model_name;

        $username = post('username');
        $password = post('password');
        $captcha = post('captcha');
        $admin = new Admin();

        //判断验证码对不对
        if (strtolower(Session::_get('captcha')) != strtolower($captcha)) {
            $view->assign('error_msg', '验证码不正确');
            $admin->common($view);
            return $view->render('login', $assignData);
        }
        //判断用户名

        $user = new User();
        $password = Safe::_encrypt($password);
        $yzResult = $user->check($username, $password);

        if ($yzResult['ack']) {
            //登陆后跳转
            $data = $yzResult['data'];
            $user->login($data['userId']);
            Response::_redirect('/admin');
        } else {
            $view->assign('error_msg', $yzResult['msg']);
            $admin->common($view);
            return $view->render('login', $assignData);
        }
    }
}
