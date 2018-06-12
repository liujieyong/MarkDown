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

