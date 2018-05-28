# Mac 常见问题合集

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

- 10.13.x 进入系统花屏 HD4600核芯显卡

			name     --  com.apple.driver.AppleIntelFramebufferAzul
			find     --  0600260A 01030303 00000002 00003001 00006000 00000060
			replace  --  0600260A 01030303 00000002 00003001 00009000 00000080
			
	- 相关解释 
	 
		`00006000` 改成 `00009000` 用来解决开机后花屏卡顿
		`00000060` 改成 `00000080` 用来解决核芯显卡显示为1536M的问题改为显示2048M
		
		
		

	
		


