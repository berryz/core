下载下来执行
composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/
composer install --no-dev
//如果更新则为 composer update --no-dev

复制env.example为env 把里面的mysql配置改下

nginx记得配置:
charset utf-8;
location / {
                try_files $uri $uri/ /index.php?$query_string;
        }

模板用的twig
sql builder用的aura/sql:https://github.com/auraphp/Aura.SqlQuery/blob/HEAD/docs/index.md
数据校验Respect\Validation\Validator:https://respect-validation.readthedocs.io/en/1.1/