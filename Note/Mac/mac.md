# mac

- 查看睡眠唤醒原因
	
		log show | grep -i "wake reason"

- 定时任务
	
		crontab
		
- 开机第二阶段花屏  config.plist - Kernel and Kext Patches - KextsToPatch
	
		Name:       IOGraphicsFamily
		Comment:    10.12+-第二阶段花屏
		Find:       01000075 25
		Replace:    010000eb 25
		MatchOS:    10.12.x
		
		Name:       IOGraphicsFamily
		Comment:    10.13+-第二阶段花屏
		Find:       01000075 22
		Replace:    010000eb 22
		MatchOS:    10.13.x



