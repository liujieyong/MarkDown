# LNMP 安装
#### 1.安装 nginx
	
	sudo apt install nginx

#### 2. 安装 php5.6
	
- 先进行换源 

	- 低版本 需要安装 才可换ppa源
	
			sudo apt-get install python-software-properties
		
	- 或者
	
			sudo apt-get install software-properties-common
	
- 换源
	
		sudo apt-add-repository ppa:ondrej/php
	
- 更新 
	
		sudo apt-get update
		
- 安装

		sudo apt-get install php5.6-fpm
		
#### 3. 安装 mysql

	sudo apt-get install mysql-server

#### 4. 安装 `pdo-mysql` 连接数据库
	
	sudo apt-get install php5.6-mysql

#### 5. 安装其他 `PHP插件` 

	sudo apt-get install php5.6-xml
	sudo apt-get install php5.6-curl
	
#### 6. 使用
	
- 修改 `/etc/php/5.6/fpm/pool.d/www.conf` 文件中的

		#TCP方式
		listen = 127.0.0.1:9000
- 修改 `/etc/nginx/sites-enabled/default`  #找到 `location ~ \.php$ {` 修改里面 (去掉前面注释)

		fastcgi_pass 127.0.0.1:9000;
		
- 重启 `nginx` 与 `PHP`







