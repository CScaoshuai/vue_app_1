import Vue from 'vue'
import App from './App.vue'
import router from './router'
//脚手架main.js
Vue.config.productionTip = false
//0.1:引入Vuex组件
import Vuex from "vuex"
//0.2:注册Vuex组件
Vue.use(Vuex)
//0.3:创建store对象
var store = new Vuex.Store({
   //共享数据容器
   state:{
     cartCount:sessionStorage.getItem("cartCount")||0
   },
   //操作共享数据方法
   mutations:{
     increment(state){
       state.cartCount++;
       sessionStorage.setItem("cartCount",state.cartCount);
     }
   },
   //获取共享数据方法
   getters:{
     optCartCount:function(state){
        return state.cartCount;
     }
   }
})
//0.4:将store绑定Vue实例





import'mint-ui/lib/style.css'
import './lib/mui/css/mui.css'
// 导入 MUI 的样式表，扩展图标样式，购物车图标
// 还需要加载图标字体文件
import './lib/mui/css/icons-extra.css'

//1:引入Header组件
import {Header,Button,Swipe,SwipeItem} from "mint-ui"
//2:组件Header组件
Vue.component(Header.name,Header);
Vue.component(Button.name,Button);
Vue.component(Swipe.name,Swipe);
Vue.component(SwipeItem.name,SwipeItem);
//3:引入axios库
import axios from "axios"
//4:配置跨域访问选项
axios.defaults.withCredentials=true
//5:将axios配置Vue实例属性
Vue.prototype.axios = axios

//6:创建日期格式过滤器 main.js
//val 原始日期格式
Vue.filter("datetimeFilter",function(val){
   //6.1:依据原始日期格式创建日期对象
   var now = new Date(val);
   //6.2:获取日期对象 年 月 日
   var y = now.getFullYear();
   var m = now.getMonth()+1;
   var d = now.getDate(); 
   //6.3:获取日期对象 时 分 秒
   var h = now.getHours();
   var mi = now.getMinutes();
   var s = now.getSeconds();
   //6.4:月份与日期 如果当前月分小于10前拼接0
   m<10&&(m="0"+m);
   d<10&&(d="0"+d);
   //6.5:拼接字符串返回
   return `${y}-${m}-${d} ${h}:${mi}:${s}`;
});
//7:main.js 引入第三方库 qs
//解决axios post请求问题 
import qs from "qs";
Vue.prototype.qs = qs;






new Vue({
  router,
  render: h => h(App),
  store         //0.4 将store绑定Vue实例
}).$mount('#app')
