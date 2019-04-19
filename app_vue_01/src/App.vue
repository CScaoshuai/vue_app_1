<template>
 <div class="app-container">
    <!--App.vue 组件-->
    <!--1:公共顶部导航条-->
    <header class="mui-bar mui-bar-nav">
		    <a class="mui-action-back mui-icon mui-icon-back mui-pull-left"></a>
		    <h1 class="mui-title">麦趣商城</h1>
		</header>   
    <!--2:容器显示其它组件-->
    <router-view></router-view>
    <!--3:底部tabbar-->
    <nav class="mui-bar mui-bar-tab">

          <router-link to="/Home" class="mui-tab-item mui-active" href="#tabbar">
            <span class="mui-icon mui-icon-home"></span>
            <span class="mui-tab-label">首页</span>
          </router-link>

          <router-link to="/NewsList" class="mui-tab-item" href="#tabbar-with-chat">
            <span class="mui-icon mui-icon-extra mui-icon-extra-class"></span>
            <span class="mui-tab-label">消息</span>
          </router-link>

          <router-link to="shopCart" class="mui-tab-item" href="#tabbar-with-map">
            <span class="mui-icon mui-icon-extra mui-icon-extra-cart">
              <span class="mui-badge">{{$store.getters.optCartCount}}</span>
            </span>
            <span class="mui-tab-label">购物车</span>
          </router-link>

          <router-link to="/Login" class="mui-tab-item" href="#tabbar-with-map">
            <span class="mui-icon mui-icon-person"></span>
            <span class="mui-tab-label">我的</span>
          </router-link>
        </nav>   
 </div>
</template>

<style>
   .app-container{
     padding-top:40px;
     padding-bottom:50px;
     overflow-x:hidden;
   }

 .mui-bar-tab .mui-tab-item-tao.mui-active {
    color: #007aff;
 }
.mui-bar-tab .mui-tab-item-tao {
    display: table-cell;
    overflow: hidden;
    width: 1%;
    height: 50px;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
    text-overflow: ellipsis;
    color: #929292;
}
.mui-bar-tab .mui-tab-item-tao .mui-icon {
    top: 3px;
    width: 24px;
    height: 24px;
    padding-top: 0;
    padding-bottom: 0;
}

.mui-bar-tab .mui-tab-item-tao .mui-icon~.mui-tab-label {
   font-size:11px;
   display:block;
   overflow:hidden;
   text-overflow:ellipsis;

}
</style>
