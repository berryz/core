接下来开发:  
　　1、多数据库支持  
　　2、完全完善ORM,现在只有User和UserRole使用  
　　3、SSO单点登陆  
　　4、API中心  
　　5、response完善  
　　6、修正登陆IP不准确的BUG  
　　7、编码规则升级为PSR12  
　　8、response完善   
　　9、后台密码在安装时可以设置  
  
1.0.5-alpha2(未知)  
　　1、验证码后台配置要不要开启，还有难度  
　　2、tests/TestWeb用新方式做自动做检测  
　　3、修正登陆没有验证码也能登录的bug  
　　4、修正init时不显示错误的bug  

1.0.5-alpha1(20200713)  
　　1、修正会员修改男女性别有问题  
　　2、修正dcr/facade/Log::systemLog丢失键的BUG  
　　3、日志默认按天存    
　　4、app添加ModelList目录放置用户自己的model  
　　5、增加Error支持cli显示错误  
　　6、PHPUnit检测增加检测表结构如果有notnull，没有默认值则报错  

1.0.4(20200710)  
　　1、测试通过，正式上线1.0.4  

1.0.4-rc2(20200709)  
　　1、修正添加会员的BUG  
　　2、修正删除会员不删除角色配置的BUG  
　　3、修正table edit字段管理没有title还有多余数据类型的BUG  
　　4、备份插件中，备份目录不存在则自动创建目录    

1.0.4-rc1(20200708)  
　　1、修正登陆次数改为0  
　　2、Log::systemLog()写日志时storage路径修正  
　　3、storage固定到public目录    

1.0.4-alpha4(20200704)  
　　1、修正model删除field和addition没删除的bug  
　　2、增强phpunit检测功能  
　　3、模型名称改为模组   
　　4、清理demo里的异常数据   
　　5、修改表的结构，加索引   
　　6、修正模组图片存数据及后台显示问题问题   
　　7、后台左上角增加快捷入口   
　　8、程序由dcrphp framework改为dcrphp core   

1.0.4-alpha3(2020.06.30)  
　　1、增加log的开关:LOG_ENABLE，默认是0  
　　2、log的默认改为是directory    
　　2、增加操作log的门脸:dcr/facade/Log    

1.0.4-alpha2(2020.06.28)  
　　1、修正页面安装的bug  

1.0.4-alpha1(2020.06.26)  
　　1、代码组织三层分层  
　　2、缓存:dcrphp/cache  
　　3、注解中心  
　　4、配置:dcrphp/config  
　　5、table edit全新案例及修正bug  
　　6、日志:dcrphp/log   
　　7、集成用户日志和系统日志  
　　8、集成Doctrine ORM  
　　9、修正编辑器bug及ignore  
　　10、增加门脸  
    
1.0.3(2020-05-12)  
　　1、部份文件重新组织  
　　2、后台JS统一化  
　　3、模型页面配置  
　　4、单表管理配置  
　　5、数据库规范制定  
　　6、Db类加上获取最后sql的功能，以方便数据库调试  
　　7、错误提示使用的是filp/whoops  

1.0.2(2020-04-17):  
　　1、完善RABC  
　　2、完善测试程序  
　　3、修改数据库规则及现有的数据库结构  
　　4、新增插件中心  
　　5、插件中心内置增加：生成表结构、数据库管理  
　　6、简单的route生效，配置在config/route，key->value来简化route  
　　7、安装web化  
　　8、默认关闭debug模式  
　　9、模板可配置  
　　10、配置中心可配置化  

1.0.1(2020-03-15):  
　　1、采用全新的底层框架，性能、开发效率提升  
　　2、后台前后端方式开发，人性化提升  
　　3、模板引擎使用twig，更健壮  
　　4、采用模型方式，系统扩展性更强  

