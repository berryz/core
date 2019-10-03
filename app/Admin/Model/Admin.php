<?php
/**
 * Created by junqing124@126.com.
 * User: dcr
 * Date: 2019/9/18
 * Time: 17:14
 */

namespace app\Admin\Model;

use dcr\View;
use dcr\Session;

class Admin
{

    /**
     * 给模板通用的key和value
     * 还有验证是不是登陆成功
     * @param View $view
     * @return string 如果有内容说明发现了错误 请输出内容
     */
    function common($view)
    {
        $user = new User();
        $view->setViewDirectoryPath(ROOT_APP . DS . 'Admin' . DS . 'View');
        $valueList = array('admin_resource_url' => env('ADMIN_RESOURCE_URL'));
        foreach ($valueList as $key => $value) {
            $view->assign($key, $value);
        }
        //把用户名和密码和验证的长度限制放入配置
        $usernameLimit = $user->getUsernameLengthLimit();
        $passwordLimit = $user->getPasswordLengthLimit();
        $captchaLimit = $user->getCaptchaLengthLimit();
        $view->assign('username_len_min', $usernameLimit['min']);
        $view->assign('username_len_max', $usernameLimit['max']);
        $view->assign('password_len_min', $passwordLimit['min']);
        $view->assign('password_len_max', $passwordLimit['max']);
        $view->assign('captcha_len_min', $captchaLimit['min']);
        $view->assign('captcha_len_max', $captchaLimit['max']);
        $loginResult = $this->yz();
        return $loginResult;
    }

    /**
     * 验证用户是不是登陆
     * @param $view
     * @return string
     */
    function yz()
    {
        $username = Session::_get('username');
        $password = Session::_get('password');

        $user = new User();
        $yzResult = $user->check($username, $password);

        if ($yzResult['ack']) {
            //验证通过
            return array('ack' => 1);
        } else {
            return array('ack' => 0, 'error_id'=> '1000', 'msg'=>'验证失败');
            //return $view->render('login');
            //exit;
        }
    }
}