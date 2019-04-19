<template>
  <div class="app-home">
    <!--顶部导航条 mint-ui-->
      <header class="mui-bar mui-bar-nav">
          <a class="mui-action-back mui-icon mui-icon-back mui-pull-left"></a>
          <h1 class="mui-title">麦趣商城</h1>
      </header>
    <!--轮播图 mint-ui-->
      <mt-swipe  :auto="4000">
        <mt-swipe-item v-for="item of navlist" :key="item.id">
          <img :src="item.img_url" />
        </mt-swipe-item>
      </mt-swipe>
    <!--文本框滚动-->
      <div class="marquee">
        <div class="marquee_title">
          <span>商城快报</span>
        </div>
        <div class="marquee_box">
          <ul class="marquee_list" :class="{marquee_top:animate}">
                  <li v-for="(item,index) in marqueeList">{{item.name}}</li>
          </ul>
        </div>
      </div>
    <!--第二层 按钮    mui-->
	   <ul class="mui-table-view mui-grid-view mui-grid-9">
        <li class="mui-table-view-cell mui-media mui-col-xs-4  
        mui-col-sm-3" v-for="item of gridlist"><router-link to="/GoodList" href="#">
            <img :src="item.img_url">
            <p>{{item.title}}</p>
            </router-link>
        </li>
      </ul>
    <!--tabbar.html 55~72   mui-->
      <div class="h4e">
        <h4>限时抢购</h4>
      </div>
      <div class="item-box">
        <div v-for="item of boxlist">
          <img :src="item.img_url" alt="">
            <p>{{item.title}}</p>
            <s>¥{{item.no_pice}}</s>
            <p>¥{{item.pice}}</p>
          </div>
      </div>

      <video class="mp4" src="http://127.0.0.1:3000/img/mp4/mm.mp4" controls></video>

      <div class="pages" v-for="item of pageslist">
        <div><img :src="item.img1" alt=""></div>
        <div class="mate">
          <div><img :src="item.img2" alt=""></div>
          <div><img :src="item.img3" alt=""></div>
        </div>
      </div>

  </div>
</template>

<script>
  export default {
    data(){
      return {
        navlist:[], //轮播图列表
        gridlist:[],//保存九宫格数组
        boxlist:[],
        pageslist:[],
        animate: false,
        marqueeList: [
          {  name: "【推荐】兰蔻Lancome"},
          {  name: "【新品】MII夏季潮流女装"} ]
      }
    },
    created() {
      this.handleImage();   //轮播图
      this.handleGrid();    //第一层 按钮
      this.handbox();       //第二层商品推荐  
      this.handpase(); 
      setInterval(this.showMarquee, 3000);
    }, 
    methods:{
      //Home.vue       
      //第二层 按钮
      handleGrid(){
        //1:发送ajax获取按钮数据
        var url = "http://127.0.0.1:3000/grid";
        this.axios.get(url).then(result=>{           
          //console.log(result.data);  //2:获取返回数据
          this.gridlist = result.data;  //3:保存gridlist
        });
      },
      //加载轮轮图数据
      handleImage(){
        //1:发送ajax获取轮播数据
        var url = "http://127.0.0.1:3000/imglist";
        this.axios.get(url).then(result=>{
          //2:获取返回结果            
          this.navlist = result.data.data;   //3:保存data属性中
        })
      },
      //第二层商品推荐
      handbox(){ 
        var url="http://127.0.0.1:3000/box"
        this.axios.get(url).then(result=>{
          this.boxlist=result.data
        })
      },
      handpase(){
            var  url="http://127.0.0.1:3000/pages"
            this.axios.get(url).then(result=>{
              this.pageslist=result.data
            })
          },
      //文本上下滚动
      showMarquee: function() {
        this.animate = true;
        setTimeout(() => {
          this.marqueeList.push(this.marqueeList[0]);

          this.marqueeList.shift();

          this.animate = false;
        }, 300);
      }
    }
  }
</script>

<style>
    .cc{
      background:#fff;
    }
    .cc>p{
      color:#999;
      text-align:center;
    }
    .bb{
      width:100%;
    }
    .app-home .tema{
      display:flex;

    }
    .app-home .aa{
      width:100%;
      height:180px;
      margin:10px 0;
    }
    .app-home .pages .mate{
      display:flex;
      flex-direction:column;
    }
    .app-home .pages .mate img{
      width:100%;
      height:100%;
    }
    .app-home .pages .mate>div{
      box-sizing:border-box;
      width:100%;
      height:50%;
      border:1px solid #ddd;
    }
    .app-home .pages{
      display:flex;
    justify-content:space-around;
    }
    .app-home .pages>div{
      height:275px;
      width:49%;
    }
    .app-home .pages>div>img{
      width:100%;
      height:100%;
    }
    .app-home .mp4{
      width:100%;
      height:211px;
    }
    .h4e{
      width:100%;
      height:50px;
      background:#fff;
    }
    .h4e>h4{
      line-height:50px;
    }
    .app-home .item-box div>img{
      width:100%;
      height:95.5px;
    }
    .app-home .item-box{
      width:100%;
      height:171px;
      display:flex;
      box-sizing:border-box;
      background:#fff;
    }
    .app-home .item-box>div{
      width:33.333333%;
      height:152.5px;
      border:1px solid #ddd;
    }
    .app-home .item-box>div>p{
    text-align:center;
    color:red;
    font-size:10px;
    margin:-4px 0;
    }
    .app-home .item-box>div>s{
      margin-left:40%;
      font-size:10px;

    }

    /*第二层按钮*/
    .app-home .mui-grid-9 img{
      width:50px;
      height:50px;
      margin-top:-10px;
      margin-left:-10px;
    }
    .app-home .mui-grid-9 li{
      width:70px;
      height:85.25px;
      border:none;
    }
    .app-home .mui-grid-9 a{
      width:70px;
      height:72.75px;
    }
    .app-home .mui-grid-9 p{
      width:70px;
      height:16.5px;
        font-size:10px;
      margin-left:-4px;
    }
    .app-home .mui-grid-view.mui-grid-9{
        background-color:#fff
      }
    .app-home .mui-grid-view.mui-grid-9 .mui-table-view-cell {
      border:none;
    }
    /*轮播样式*/
    .app-home .mint-swipe{
      height:150px
    }
    .app-home .mint-swipe img{
      width:100%;
    }
    /*文本栏样式*/
    .marquee {
      width: 100%;
      height: 40px;
      align-items: center;
      color: #3a3a3a;
      background-color: white;
      display: flex;
      box-sizing: border-box;
      overflow: hidden;
    }

    .marquee_title {
      padding: 0 20px;
      height: 21px;
      font-size: 14px;
      border-right: 1px solid #d8d8d8;
      align-items: center;
    }
    .marquee_box {
      display: block;
      position: relative;
      width: 60%;
      height: 60px;
      overflow: hidden;
    }
    .marquee_list {
      display: block;
      list-style:none;
      position: absolute;
      top: 0;
      left: 0;
    }
    .marquee_top {
      transition: all 0.5s;
      margin-top: -30px;
    }
    .marquee_list li {
      height: 30px;
      line-height: 30px;
      font-size: 14px;
      padding-left: 20px;
    }
    .marquee_list li span {
      padding: 0 2px;
    }

</style>