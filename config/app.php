<?php
/**
 * Created by junqing124@126.com.
 * User: dcr
 * Date: 2019/7/28
 * Time: 20:09
 */
return [

    //别名
    'alias' => [
        'config'=> \DcrPHP\Config\Config::class,
        'request'=> dcr\Request::class,
        'rule'=> dcr\route\Rule::class,
        'rule_item'=> dcr\route\RuleItem::class,
        'route'=> dcr\Route::class,
        'view'=> dcr\View::class,
        'response'=> dcr\Response::class,
        'cache'=> \DcrPHP\Cache\Cache::class,
    ],

    //时区
    'default_timezone' => 'PRC',

    //是不是debug模式
    'debug' => 1, //1是开启 0是关闭

    //开启模板缓存
    'view_cache' => 0,

    //session过期时间
    'session_life_time'=> 3600,
];