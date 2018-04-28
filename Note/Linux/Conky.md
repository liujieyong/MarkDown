# Conky 配置文件 
	
	# Conky settings #
	background yes
	update_interval 1
	double_buffer yes
	no_buffers yes
	imlib_cache_size 10

	# Window specifications #
	gap_x 0
	gap_y 0
	minimum_size 2048 100
	maximum_width 2048
	alignment top_left
	own_window yes
	own_window_type normal
	own_window_transparent yes
	own_window_argb_visual yes
	own_window_argb_value 0
	own_window_hints undecorated,sticky,skip_taskbar,skip_pager,below
	#own_window_type normal
	#own_window_transparent no
	#own_window_hints undecorated,below,sticky,skip_taskbar,skip_pager
	#own_window_argb_visual yes
	#own_window_argb_value 0
	border_inner_margin 0
	border_outer_margin 0

	# Graphics settings #
	draw_shades no
	default_shade_color AAAAAA
	draw_outline no
	default_outline_color AAAAAA
	draw_borders no
	draw_graph_borders no
	default_graph_size 26 80
	show_graph_scale no
	show_graph_range no

	# Text settings #
	use_xft yes
	xftalpha 0
	xftfont Droid Sans:size=9
	text_buffer_size 2048
	override_utf8_locale yes

	# Useful shortenings #
	short_units yes
	pad_percents  2
	top_name_width 30

	# Color scheme #
	default_color FFFFFF
	color1 FFFFFF
	color2 FFFFFF
	color3 FFFFFF
	color4 FFFFFF
	color5 DCDCDC
	color6 FFFFFF
	color7 FFFFFF
	color8 FFFFFF

	own_window_colour 000000
	TEXT
	# Fixed the weather parsing peice
	# You can build the command here:
	# https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%3D26198100&diagnostics=true&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys
	${execi 300 curl -s "http://192.168.5.147/.weather.php" -o ~/.cache/weather.xml}
	\
	# Weather
	${goto 36}${voffset -32}${alignc 933}${font Droid Sans :size=36}${color1}${execi 300 grep "yweather:condition" ~/.cache/weather.xml | grep -o "temp=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*"}°${font}${color}
	${goto 36}${voffset 10}${alignc 903}${font Droid Sans :size=16}${color1}${execi 300 grep "yweather:condition" ~/.cache/weather.xml | grep -o "city=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*"}${font}${color}  ${font Droid Sans :size=10}${execi 300 grep "yweather:condition" ~/.cache/weather.xml | grep -o "region=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*"}${font}
	${voffset -90}${alignc 839}${execi 300 grep "yweather:atmosphere" ~/.cache/weather.xml | grep -o "pressure=\"[^\"]*\" r" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*"} ${execi 300 grep "yweather:units" ~/.cache/weather.xml | grep -o "pressure=\"[^\"]*\" s" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*"}
	${voffset 3}${alignc 850}${execi 300 grep "yweather:atmosphere" ~/.cache/weather.xml | grep -o "humidity=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*"} %${color}
	${voffset 3}${alignc 843}${execi 300 grep "yweather:units" ~/.cache/weather.xml | grep -o "speed=\"[^\"]*\"\/" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*"} ${execi 300 grep "yweather:units" ~/.cache/weather.xml | grep -o "speed=\"[^\"]*\" " | grep -o "\"[^\"]*\"" | grep -o "[^\"]*"} ${color}
	\
	${color3}${voffset -30}${alignc 763}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "date=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==2' | tr '[a-z]' '[A-Z]'} . 今${color}
	${color3}${voffset -18}${alignc 613}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "date=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==2' | tr '[a-z]' '[A-Z]'} . 明${color}
	${color3}${voffset -18}${alignc 463}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "date=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==4' | tr '[a-z]' '[A-Z]'} . ${alignc 463}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "day=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==3' | tr '[a-z]' '[A-Z]'}${color}
	${color3}${voffset -18}${alignc 313}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "date=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==5' | tr '[a-z]' '[A-Z]'} . ${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "day=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==4' | tr '[a-z]' '[A-Z]'}${color}
	${color3}${voffset -18}${alignc 163}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "date=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==6' | tr '[a-z]' '[A-Z]'} . ${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "day=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==5' | tr '[a-z]' '[A-Z]'}${color}
	${color3}${voffset -18}${alignc -37}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "date=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==7' | tr '[a-z]' '[A-Z]'} . ${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "day=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==6' | tr '[a-z]' '[A-Z]'}${color}
	${color3}${voffset -18}${alignc -187}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "date=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==8' | tr '[a-z]' '[A-Z]'} . ${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "day=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==7' | tr '[a-z]' '[A-Z]'}${color}
	${color3}${voffset -18}${alignc -337}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "date=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==9' | tr '[a-z]' '[A-Z]'} . ${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "day=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==8' | tr '[a-z]' '[A-Z]'}${color}
	${color3}${voffset -18}${alignc -487}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "date=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==10' | tr '[a-z]' '[A-Z]'} . ${alignc -487}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "day=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==9' | tr '[a-z]' '[A-Z]'}${color}
	${color3}${voffset -18}${alignc -637}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "date=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==11' | tr '[a-z]' '[A-Z]'} . ${alignc -637}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "day=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==10' | tr '[a-z]' '[A-Z]'}${color}
	\
	${color2}${voffset -41}${alignc 793}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "low=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==1'}°
	${color2}${voffset -18}${alignc 733}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "high=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==1'}°
	${color2}${voffset -18}${alignc 643}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "low=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==2'}°
	${color2}${voffset -18}${alignc 583}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "high=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==2'}°
	${color2}${voffset -18}${alignc 493}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "low=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==3'}°
	${color2}${voffset -18}${alignc 433}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "high=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==3'}°
	${color2}${voffset -18}${alignc 343}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "low=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==4'}°
	${color2}${voffset -18}${alignc 283}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "high=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==4'}°
	${color2}${voffset -18}${alignc 193}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "low=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==5'}°
	${color2}${voffset -18}${alignc 133}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "high=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==5'}°
	${color2}${voffset -18}${alignc -7}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "low=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==6'}°
	${color2}${voffset -18}${alignc -67}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "high=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==6'}°
	${color2}${voffset -18}${alignc -157}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "low=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==7'}°
	${color2}${voffset -18}${alignc -217}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "high=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==7'}°
	${color2}${voffset -18}${alignc -307}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "low=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==8'}°
	${color2}${voffset -18}${alignc -367}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "high=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==8'}°
	${color2}${voffset -18}${alignc -457}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "low=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==9'}°
	${color2}${voffset -18}${alignc -517}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "high=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==9'}°
	${color2}${voffset -18}${alignc -607}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "low=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==10'}°
	${color2}${voffset -18}${alignc -667}${execi 300 grep "yweather:forecast" ~/.cache/weather.xml | grep -o "high=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==10'}°
	\

	${execi 300 cp -f ~/.conky/icons/$(grep "yweather:forecast" ~/.cache/weather.xml | grep -o "code=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==1').png ~/.cache/weather-1.png}${image ~/.cache/weather-1.png -p 250,0 -s 22x22}\
	${execi 300 cp -f ~/.conky/icons/$(grep "yweather:forecast" ~/.cache/weather.xml | grep -o "code=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==2').png ~/.cache/weather-2.png}${image ~/.cache/weather-2.png -p 400,0 -s 22x22}\
	${execi 300 cp -f ~/.conky/icons/$(grep "yweather:forecast" ~/.cache/weather.xml | grep -o "code=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==3').png ~/.cache/weather-3.png}${image ~/.cache/weather-3.png -p 550,0 -s 22x22}\
	${execi 300 cp -f ~/.conky/icons/$(grep "yweather:forecast" ~/.cache/weather.xml | grep -o "code=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==4').png ~/.cache/weather-4.png}${image ~/.cache/weather-4.png -p 700,0 -s 22x22}\
	${execi 300 cp -f ~/.conky/icons/$(grep "yweather:forecast" ~/.cache/weather.xml | grep -o "code=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==5').png ~/.cache/weather-5.png}${image ~/.cache/weather-5.png -p 850,0 -s 22x22}\
	${execi 300 cp -f ~/.conky/icons/$(grep "yweather:forecast" ~/.cache/weather.xml | grep -o "code=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==6').png ~/.cache/weather-6.png}${image ~/.cache/weather-6.png -p 1050,0 -s 22x22}\
	${execi 300 cp -f ~/.conky/icons/$(grep "yweather:forecast" ~/.cache/weather.xml | grep -o "code=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==7').png ~/.cache/weather-7.png}${image ~/.cache/weather-7.png -p 1200,0 -s 22x22}\
	${execi 300 cp -f ~/.conky/icons/$(grep "yweather:forecast" ~/.cache/weather.xml | grep -o "code=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==8').png ~/.cache/weather-8.png}${image ~/.cache/weather-8.png -p 1350,0 -s 22x22}\
	${execi 300 cp -f ~/.conky/icons/$(grep "yweather:forecast" ~/.cache/weather.xml | grep -o "code=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==9').png ~/.cache/weather-9.png}${image ~/.cache/weather-9.png -p 1500,0 -s 22x22}\
	${execi 300 cp -f ~/.conky/icons/$(grep "yweather:forecast" ~/.cache/weather.xml | grep -o "code=\"[^\"]*\"" | grep -o "\"[^\"]*\"" | grep -o "[^\"]*" | awk 'NR==10').png ~/.cache/weather-10.png}${image ~/.cache/weather-10.png -p 1650,0 -s 22x22}\

	${image ~/.conky/images/pressure.png -p 135,0 -s 16x16}\
	${image ~/.conky/images/humidity.png -p 135,20 -s 16x16}\
	${image ~/.conky/images/wind.png -p 135,40 -s 16x16}\

