#Sublime 插件

#### 1. 中文插件

	localizedMenu

#### 2. 添加GBK语言包
		
	ConvertToUTF8

- 如果不能使用 添加 
				
		Codecs33
	
#### 3. 添加支持GB233112 和 GBK
	
	GBK Encoding Support
		
#### 4. 添加PackageControl 快捷键 Ctrl+`

	import urllib.request,os,hashlib; h = '6f4c264a24d933ce70df5dedcf1dcaee' + 'ebe013ee18cced0ef93d5f746d80ef60'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)

