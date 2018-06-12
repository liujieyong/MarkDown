# 模板语法

### 1.插值

- 文本
	
		<div id="app">
			<p>{{ message }}</p>
		</div>
	
- Html

		<div id="app">
		    <div v-html="message"></div>
		</div>
		<script>
			new Vue({
		  		el: '#app',
		  		data: {
		    		message: '<h1>菜鸟教程</h1>'
			  	}
			})
		</script>
		
- 属性

		<div id="app">
	  		<label for="r1">修改颜色</label><input type="checkbox" v-model="class1" id="r1">
		  	<br><br>
		  	<div v-bind:class="{'class1': class1}">
				directiva v-bind:class
		  	</div>
		</div>
		    
		<script>
			new Vue({
	    		el: '#app',
			  	data:{
		      	class1: false
	  			}
			});
		</script>

- 表达式

		<div id="app">
	  		{{5+5}}<br>
		  	{{ ok ? 'YES' : 'NO' }}<br>
		  	{{ message.split('').reverse().join('') }}
		  	<div v-bind:id="'list-' + id">菜鸟教程</div>
		</div>
		<script>
			new Vue({
		  		el: '#app',
		 	 	data: {
			    	ok: true,
			    	message: 'RUNOOB',
			    	id : 1
			  	}
			})
		</script>

- 指令

		// 这里， v-if 指令将根据表达式 seen 的值(true 或 false )来决定是否插入 p 元素。
		
		<div id="app">
    		<p v-if="seen">现在你看到我了</p>
		</div>
		    
		<script>
			new Vue({
			  	el: '#app',
			  	data: {
			    	seen: true
			  	}
			})
		</script>
		
- 参数

		// 在这里 href 是参数，告知 v-bind 指令将该元素的 href 属性与表达式 url 的值绑定。
		
		<div id="app">
    		<pre><a v-bind:href="url">菜鸟教程</a></pre>
		</div>
		    
		<script>
			new Vue({
			  	el: '#app',
			  	data: {
			    	url: 'http://www.runoob.com'
			  	}
			})
		</script>
		
		<a v-on:click="doSomething">

- 修饰符
		
		// 修饰符是以半角句号 . 指明的特殊后缀，用于指出一个指定应该以特殊方式绑定。例如，.prevent 修饰符告诉 v-on 指令对于触发的事件调用 event.preventDefault()
		
		<form v-on:submit.prevent="onSubmit"></form>

- 用户输入

		// 在 input 输入框中我们可以使用 v-model 指令来实现双向数据绑定 
		// 按钮的事件我们可以使用 v-on 监听事件，并对用户的输入进行响应。
		
		<div id="app">
		    <p>{{ message }}</p>
		    <input v-model="message">
		</div>
		<script>
			new Vue({
			  	el: '#app',
			  	data: {
			    	message: 'Runoob!'
			  	}
			})
		</script>

- 字符串反转

		<div id="app">
		    <p>{{ message }}</p>
		    <button v-on:click="reverseMessage">反转字符串</button>
		</div>
		<script>
			new Vue({
			  	el: '#app',
			  	data: {
			    	message: 'Runoob!'
			  	},
			  	methods: {
			    	reverseMessage: function () {
			      	this.message = this.message.split('').reverse().join('')
			    	}
			  	}
			})
		</script>

- 过滤器

		<!-- 在两个大括号中 -->
		{{ message | capitalize }}
		
		<!-- 在 v-bind 指令中 -->
		<div v-bind:id="rawId | formatId"></div>

		<div id="app">
		  	{{ message | capitalize }}
		</div>
		    
		<script>
			new Vue({
			  	el: '#app',
			  	data: {
			    	message: 'runoob'
			  	},
			  	filters: {
			    	capitalize: function (value) {
				      if (!value) return ''
				      value = value.toString()
				      return value.charAt(0).toUpperCase() + value.slice(1)
			    	}
			  	}
			})
		</script>

	- 过滤器可以串联：

			{{ message | filterA | filterB }}
	- 过滤器是 JavaScript 函数，因此可以接受参数：

			{{ message | filterA('arg1', arg2) }}
			
	- 这里，message 是第一个参数，字符串 'arg1' 将传给过滤器作为第二个参数， arg2 表达式的值将被求值然后传给过滤器作为第三个参数。

- 缩写
	
	- v-bind 缩写

			<!-- 完整语法 -->
			<a v-bind:href="url"></a>
			<!-- 缩写 -->
			<a :href="url"></a>
	- 	v-bind 缩写

			<!-- 完整语法 -->
			<a v-on:click="doSomething"></a>
			<!-- 缩写 -->
			<a @click="doSomething"></a>

- 新增对象属性

		Vue.set 
	
	![](media/15287727380976.png)


