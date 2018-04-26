Git操作
=====

#### git 在Linux中的操作

- 安装Git

- 添加用户名

		git config --global user.name "YourName"

- 添加GitHub帐号

		git config --global user.email "YourEmail"

- 添加 key 到 GitHub 上
	- 查看是否在本地生成 key

		ls -al ~/.ssh

	1. 如果有 key 则跳过这一步 进行下一步 

			ssh-keygeen -t rsa -C "YourEmail"
		
	2. 用编辑器打开 并 复制
	
			vim ~/.ssh/id_rsa.pub
	
	3.  添加到 GitHub 上
	
	![rEfyr9.png](https://s1.imgsha.com/2018/04/26/rEfyr9.png)
	
	4. 克隆 项目 到本地
	
			git clone git@github.com:YourName/YourProgect.git 
			
- 推送项目到GitHub
	
		/*  添加文件到暂缓区  */
		git add 文件名     /*  git add .  表示把所有文件添加到暂缓区  */
		
		/*  提交本次修改  */
		git commit -m "提交说明"
		
		/*  推送到远程仓库  */
		git push origin master

	 
	