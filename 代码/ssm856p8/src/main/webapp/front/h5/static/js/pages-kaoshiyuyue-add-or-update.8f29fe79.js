(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-kaoshiyuyue-add-or-update"],{"2aa9":function(e,r,t){var i=t("24fb");r=i(!1),r.push([e.i,'@charset "UTF-8";\n/**\r\n * 这里是uni-app内置的常用样式变量\r\n *\r\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\r\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\r\n *\r\n */\n/**\r\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\r\n *\r\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\r\n */\n/* 颜色变量 */\n/* 行为相关颜色 */\n/* 文字基本颜色 */\n/* 背景颜色 */\n/* 边框颜色 */\n/* 尺寸变量 */\n/* 文字尺寸 */\n/* 图片尺寸 */\n/* Border Radius */\n/* 水平间距 */\n/* 垂直间距 */\n/* 透明度 */\n/* 文章场景相关 */.container[data-v-75eb2538]{padding:%?20?%}.content[data-v-75eb2538]:after{position:fixed;top:0;right:0;left:0;bottom:0;content:"";background-attachment:fixed;background-size:cover;background-position:50%}uni-textarea[data-v-75eb2538]{border:%?1?% solid #eee;border-radius:%?20?%;padding:%?20?%}.title[data-v-75eb2538]{width:%?180?%}.avator[data-v-75eb2538]{width:%?150?%;height:%?60?%}.right-input[data-v-75eb2538]{-webkit-box-flex:1;-webkit-flex:1;flex:1;text-align:left;padding:0 %?24?%}.cu-form-group.active[data-v-75eb2538]{-webkit-box-pack:justify;-webkit-justify-content:space-between;justify-content:space-between}.btn[data-v-75eb2538]{display:-webkit-box;display:-webkit-flex;display:flex;-webkit-box-align:center;-webkit-align-items:center;align-items:center;-webkit-box-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-flex-wrap:wrap;flex-wrap:wrap;padding:%?20?% 0}.cu-form-group[data-v-75eb2538]{padding:0 %?24?%;background-color:initial;min-height:inherit}.cu-form-group + .cu-form-group[data-v-75eb2538]{border:0}.cu-form-group uni-input[data-v-75eb2538]{padding:0 %?30?%}.uni-input[data-v-75eb2538]{padding:0 %?30?%}.cu-form-group uni-textarea[data-v-75eb2538]{padding:%?30?%;margin:0}.cu-form-group uni-picker[data-v-75eb2538]::after{line-height:%?88?%}.select .uni-input[data-v-75eb2538]{line-height:%?88?%}.input .right-input[data-v-75eb2538]{line-height:%?88?%}',""]),e.exports=r},"8eec":function(e,r,t){"use strict";t.r(r);var i=t("ed12"),a=t.n(i);for(var o in i)"default"!==o&&function(e){t.d(r,e,(function(){return i[e]}))}(o);r["default"]=a.a},9187:function(e,r,t){"use strict";var i=t("9ac5"),a=t.n(i);a.a},"9ac5":function(e,r,t){var i=t("2aa9");"string"===typeof i&&(i=[[e.i,i,""]]),i.locals&&(e.exports=i.locals);var a=t("4f06").default;a("5ef8d7e3",i,!0,{sourceMap:!1,shadowMode:!1})},b310:function(e,r,t){"use strict";t.r(r);var i=t("de60"),a=t("8eec");for(var o in a)"default"!==o&&function(e){t.d(r,e,(function(){return a[e]}))}(o);t("9187");var n,s=t("f0c5"),u=Object(s["a"])(a["default"],i["b"],i["c"],!1,null,"75eb2538",null,!1,i["a"],n);r["default"]=u.exports},de60:function(e,r,t){"use strict";var i={"w-picker":t("e2b1").default},a=function(){var e=this,r=e.$createElement,t=e._self._c||r;return t("v-uni-view",{staticClass:"content"},[t("v-uni-form",{staticClass:"app-update-pv"},[t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 0px rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"rgba(51, 153, 153, 1)",margin:"0 0 10rpx 0",borderWidth:"2rpx",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(51, 153, 153, 1)",textAlign:"left"}},[e._v("考试科目")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0.19)",borderColor:"rgba(51, 153, 153, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.kaoshikemu,placeholder:"考试科目"},model:{value:e.ruleForm.kaoshikemu,callback:function(r){e.$set(e.ruleForm,"kaoshikemu",r)},expression:"ruleForm.kaoshikemu"}})],1),t("v-uni-view",{staticClass:"cu-form-group",class:"left"==e.left?"":"active",style:{boxShadow:"0 0 0px rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"rgba(51, 153, 153, 1)",margin:"0 0 20rpx 0",borderWidth:"2rpx",borderStyle:"solid",height:"108rpx"},on:{click:function(r){arguments[0]=r=e.$handleEvent(r),e.fengmiantuTap.apply(void 0,arguments)}}},[t("v-uni-view",{staticClass:"title",style:{width:"160rpx",fontSize:"28rpx",color:"rgba(51, 153, 153, 1)",textAlign:"left"}},[e._v("封面图")]),t("v-uni-view",{staticClass:"right-input",staticStyle:{padding:"0"},style:{textAlign:"left"}},[e.ruleForm.fengmiantu?t("v-uni-image",{staticClass:"avator",style:{width:"88rpx",boxShadow:"0 0 0px rgba(0,0,0,.3)",borderRadius:"100%",textAlign:"left",height:"88rpx"},attrs:{src:e.baseUrl+e.ruleForm.fengmiantu,mode:"aspectFill"}}):t("v-uni-image",{staticClass:"avator",style:{width:"88rpx",boxShadow:"0 0 0px rgba(0,0,0,.3)",borderRadius:"100%",textAlign:"left",height:"88rpx"},attrs:{src:"../../static/gen/upload.png",mode:"aspectFill"}})],1)],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 0px rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"rgba(51, 153, 153, 1)",margin:"0 0 10rpx 0",borderWidth:"2rpx",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(51, 153, 153, 1)",textAlign:"left"}},[e._v("考试场地")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0.19)",borderColor:"rgba(51, 153, 153, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.kaoshichangdi,placeholder:"考试场地"},model:{value:e.ruleForm.kaoshichangdi,callback:function(r){e.$set(e.ruleForm,"kaoshichangdi",r)},expression:"ruleForm.kaoshichangdi"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 0px rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"rgba(51, 153, 153, 1)",margin:"0 0 10rpx 0",borderWidth:"2rpx",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(51, 153, 153, 1)",textAlign:"left"}},[e._v("考试日期")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0.19)",borderColor:"rgba(51, 153, 153, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.kaoshiriqi,placeholder:"考试日期"},model:{value:e.ruleForm.kaoshiriqi,callback:function(r){e.$set(e.ruleForm,"kaoshiriqi",r)},expression:"ruleForm.kaoshiriqi"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 0px rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"rgba(51, 153, 153, 1)",margin:"0 0 10rpx 0",borderWidth:"2rpx",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(51, 153, 153, 1)",textAlign:"left"}},[e._v("考试场次")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0.19)",borderColor:"rgba(51, 153, 153, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.kaoshichangci,placeholder:"考试场次"},model:{value:e.ruleForm.kaoshichangci,callback:function(r){e.$set(e.ruleForm,"kaoshichangci",r)},expression:"ruleForm.kaoshichangci"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 0px rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"rgba(51, 153, 153, 1)",margin:"0 0 10rpx 0",borderWidth:"2rpx",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(51, 153, 153, 1)",textAlign:"left"}},[e._v("预约时间")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0.19)",borderColor:"rgba(51, 153, 153, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{placeholder:"预约时间"},on:{click:function(r){arguments[0]=r=e.$handleEvent(r),e.toggleTab("yuyueshijian")}},model:{value:e.ruleForm.yuyueshijian,callback:function(r){e.$set(e.ruleForm,"yuyueshijian",r)},expression:"ruleForm.yuyueshijian"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 0px rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"rgba(51, 153, 153, 1)",margin:"0 0 10rpx 0",borderWidth:"2rpx",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(51, 153, 153, 1)",textAlign:"left"}},[e._v("驾校账号")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0.19)",borderColor:"rgba(51, 153, 153, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.jiaxiaozhanghao,placeholder:"驾校账号"},model:{value:e.ruleForm.jiaxiaozhanghao,callback:function(r){e.$set(e.ruleForm,"jiaxiaozhanghao",r)},expression:"ruleForm.jiaxiaozhanghao"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 0px rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"rgba(51, 153, 153, 1)",margin:"0 0 10rpx 0",borderWidth:"2rpx",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(51, 153, 153, 1)",textAlign:"left"}},[e._v("驾校名称")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0.19)",borderColor:"rgba(51, 153, 153, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.jiaxiaomingcheng,placeholder:"驾校名称"},model:{value:e.ruleForm.jiaxiaomingcheng,callback:function(r){e.$set(e.ruleForm,"jiaxiaomingcheng",r)},expression:"ruleForm.jiaxiaomingcheng"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 0px rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"rgba(51, 153, 153, 1)",margin:"0 0 10rpx 0",borderWidth:"2rpx",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(51, 153, 153, 1)",textAlign:"left"}},[e._v("学员账号")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0.19)",borderColor:"rgba(51, 153, 153, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.xueyuanzhanghao,placeholder:"学员账号"},model:{value:e.ruleForm.xueyuanzhanghao,callback:function(r){e.$set(e.ruleForm,"xueyuanzhanghao",r)},expression:"ruleForm.xueyuanzhanghao"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 0px rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"rgba(51, 153, 153, 1)",margin:"0 0 10rpx 0",borderWidth:"2rpx",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(51, 153, 153, 1)",textAlign:"left"}},[e._v("学员姓名")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0.19)",borderColor:"rgba(51, 153, 153, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.xueyuanxingming,placeholder:"学员姓名"},model:{value:e.ruleForm.xueyuanxingming,callback:function(r){e.$set(e.ruleForm,"xueyuanxingming",r)},expression:"ruleForm.xueyuanxingming"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 0px rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"rgba(51, 153, 153, 1)",margin:"0 0 10rpx 0",borderWidth:"2rpx",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(51, 153, 153, 1)",textAlign:"left"}},[e._v("手机")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0.19)",borderColor:"rgba(51, 153, 153, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.shouji,placeholder:"手机"},model:{value:e.ruleForm.shouji,callback:function(r){e.$set(e.ruleForm,"shouji",r)},expression:"ruleForm.shouji"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 0px rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"rgba(51, 153, 153, 1)",margin:"0 0 10rpx 0",borderWidth:"2rpx",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(51, 153, 153, 1)",textAlign:"left"}},[e._v("身份证")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0.19)",borderColor:"rgba(51, 153, 153, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.shenfenzheng,placeholder:"身份证"},model:{value:e.ruleForm.shenfenzheng,callback:function(r){e.$set(e.ruleForm,"shenfenzheng",r)},expression:"ruleForm.shenfenzheng"}})],1),t("v-uni-view",{staticClass:"btn"},[t("v-uni-button",{staticClass:"bg-red",style:{boxShadow:"0 0 0px rgba(0,0,0,0) inset",backgroundColor:"rgba(51, 153, 153, 1)",borderColor:"rgba(51, 153, 153, 1)",borderRadius:"8rpx",color:"#fff",borderWidth:"1",width:"80%",fontSize:"28rpx",borderStyle:"solid",height:"80rpx"},on:{click:function(r){arguments[0]=r=e.$handleEvent(r),e.onSubmitTap.apply(void 0,arguments)}}},[e._v("提交")])],1)],1),t("w-picker",{ref:"yuyueshijian",attrs:{mode:"dateTime",step:"1",current:!1,hasSecond:!1,themeColor:"#333333"},on:{confirm:function(r){arguments[0]=r=e.$handleEvent(r),e.yuyueshijianConfirm.apply(void 0,arguments)}}})],1)},o=[];t.d(r,"b",(function(){return a})),t.d(r,"c",(function(){return o})),t.d(r,"a",(function(){return i}))},ed12:function(e,r,t){"use strict";var i=t("4ea4");Object.defineProperty(r,"__esModule",{value:!0}),r.default=void 0,t("a481"),t("c5f6"),t("f559"),t("ac6a"),t("96cf");var a=i(t("3b8d")),o=i(t("e2b1")),n={data:function(){return{cross:"",ruleForm:{kaoshikemu:"",fengmiantu:"",kaoshichangdi:"",kaoshiriqi:"",kaoshichangci:"",yuyueshijian:"",jiaxiaozhanghao:"",jiaxiaomingcheng:"",xueyuanzhanghao:"",xueyuanxingming:"",shouji:"",shenfenzheng:"",sfsh:"",shhf:"",userid:""},user:{},ro:{kaoshikemu:!1,fengmiantu:!1,kaoshichangdi:!1,kaoshiriqi:!1,kaoshichangci:!1,yuyueshijian:!1,jiaxiaozhanghao:!1,jiaxiaomingcheng:!1,xueyuanzhanghao:!1,xueyuanxingming:!1,shouji:!1,shenfenzheng:!1,sfsh:!1,shhf:!1,userid:!1}}},components:{wPicker:o.default},computed:{baseUrl:function(){return this.$base.url}},onLoad:function(){var e=(0,a.default)(regeneratorRuntime.mark((function e(r){var t,i,a,o;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return this.ruleForm.yuyueshijian=this.$utils.getCurDateTime(),t=uni.getStorageSync("nowTable"),e.next=4,this.$api.session(t);case 4:if(i=e.sent,this.user=i.data,this.ruleForm.xueyuanzhanghao=this.user.xueyuanzhanghao,this.ro.xueyuanzhanghao=!0,this.ruleForm.xueyuanxingming=this.user.xueyuanxingming,this.ro.xueyuanxingming=!0,this.ruleForm.shouji=this.user.shouji,this.ro.shouji=!0,this.ruleForm.shenfenzheng=this.user.shenfenzheng,this.ro.shenfenzheng=!0,this.ruleForm.userid=uni.getStorageSync("userid"),r.refid&&(this.ruleForm.refid=r.refid,this.ruleForm.nickname=uni.getStorageSync("nickname")),!r.id){e.next=22;break}return this.ruleForm.id=r.id,e.next=20,this.$api.info("kaoshiyuyue",this.ruleForm.id);case 20:i=e.sent,this.ruleForm=i.data;case 22:if(this.cross=r.cross,!r.cross){e.next=82;break}a=uni.getStorageSync("crossObj"),e.t0=regeneratorRuntime.keys(a);case 26:if((e.t1=e.t0()).done){e.next=82;break}if(o=e.t1.value,"kaoshikemu"!=o){e.next=32;break}return this.ruleForm.kaoshikemu=a[o],this.ro.kaoshikemu=!0,e.abrupt("continue",26);case 32:if("fengmiantu"!=o){e.next=36;break}return this.ruleForm.fengmiantu=a[o],this.ro.fengmiantu=!0,e.abrupt("continue",26);case 36:if("kaoshichangdi"!=o){e.next=40;break}return this.ruleForm.kaoshichangdi=a[o],this.ro.kaoshichangdi=!0,e.abrupt("continue",26);case 40:if("kaoshiriqi"!=o){e.next=44;break}return this.ruleForm.kaoshiriqi=a[o],this.ro.kaoshiriqi=!0,e.abrupt("continue",26);case 44:if("kaoshichangci"!=o){e.next=48;break}return this.ruleForm.kaoshichangci=a[o],this.ro.kaoshichangci=!0,e.abrupt("continue",26);case 48:if("yuyueshijian"!=o){e.next=52;break}return this.ruleForm.yuyueshijian=a[o],this.ro.yuyueshijian=!0,e.abrupt("continue",26);case 52:if("jiaxiaozhanghao"!=o){e.next=56;break}return this.ruleForm.jiaxiaozhanghao=a[o],this.ro.jiaxiaozhanghao=!0,e.abrupt("continue",26);case 56:if("jiaxiaomingcheng"!=o){e.next=60;break}return this.ruleForm.jiaxiaomingcheng=a[o],this.ro.jiaxiaomingcheng=!0,e.abrupt("continue",26);case 60:if("xueyuanzhanghao"!=o){e.next=64;break}return this.ruleForm.xueyuanzhanghao=a[o],this.ro.xueyuanzhanghao=!0,e.abrupt("continue",26);case 64:if("xueyuanxingming"!=o){e.next=68;break}return this.ruleForm.xueyuanxingming=a[o],this.ro.xueyuanxingming=!0,e.abrupt("continue",26);case 68:if("shouji"!=o){e.next=72;break}return this.ruleForm.shouji=a[o],this.ro.shouji=!0,e.abrupt("continue",26);case 72:if("shenfenzheng"!=o){e.next=76;break}return this.ruleForm.shenfenzheng=a[o],this.ro.shenfenzheng=!0,e.abrupt("continue",26);case 76:if("userid"!=o){e.next=80;break}return this.ruleForm.userid=a[o],this.ro.userid=!0,e.abrupt("continue",26);case 80:e.next=26;break;case 82:this.styleChange();case 83:case"end":return e.stop()}}),e,this)})));function r(r){return e.apply(this,arguments)}return r}(),methods:{styleChange:function(){this.$nextTick((function(){}))},yuyueshijianConfirm:function(e){console.log(e),this.ruleForm.yuyueshijian=e.result,this.$forceUpdate()},fengmiantuTap:function(){var e=this;this.$api.upload((function(r){e.ruleForm.fengmiantu="upload/"+r.file,e.$forceUpdate(),e.$nextTick((function(){e.styleChange()}))}))},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var e=(0,a.default)(regeneratorRuntime.mark((function e(){var r,t,i,a,o,n,s,u,l,h;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(!this.cross){e.next=16;break}if(a=uni.getStorageSync("statusColumnName"),o=uni.getStorageSync("statusColumnValue"),""==a){e.next=16;break}if(n=uni.getStorageSync("crossObj"),a.startsWith("[")){e.next=12;break}for(s in n)s==a&&(n[s]=o);return u=uni.getStorageSync("crossTable"),e.next=10,this.$api.update("".concat(u),n);case 10:e.next=16;break;case 12:r=Number(uni.getStorageSync("userid")),t=n["id"],i=uni.getStorageSync("statusColumnName"),i=i.replace(/\[/,"").replace(/\]/,"");case 16:if(!t||!r){e.next=38;break}return this.ruleForm.crossuserid=r,this.ruleForm.crossrefid=t,l={page:1,limit:10,crossuserid:r,crossrefid:t},e.next=22,this.$api.list("kaoshiyuyue",l);case 22:if(h=e.sent,!(h.data.total>=i)){e.next=28;break}return this.$utils.msg(uni.getStorageSync("tips")),e.abrupt("return",!1);case 28:if(!this.ruleForm.id){e.next=33;break}return e.next=31,this.$api.update("kaoshiyuyue",this.ruleForm);case 31:e.next=35;break;case 33:return e.next=35,this.$api.add("kaoshiyuyue",this.ruleForm);case 35:this.$utils.msgBack("提交成功");case 36:e.next=46;break;case 38:if(!this.ruleForm.id){e.next=43;break}return e.next=41,this.$api.update("kaoshiyuyue",this.ruleForm);case 41:e.next=45;break;case 43:return e.next=45,this.$api.add("kaoshiyuyue",this.ruleForm);case 45:this.$utils.msgBack("提交成功");case 46:case"end":return e.stop()}}),e,this)})));function r(){return e.apply(this,arguments)}return r}(),optionsChange:function(e){this.index=e.target.value},bindDateChange:function(e){this.date=e.target.value},getDate:function(e){var r=new Date,t=r.getFullYear(),i=r.getMonth()+1,a=r.getDate();return"start"===e?t-=60:"end"===e&&(t+=2),i=i>9?i:"0"+i,a=a>9?a:"0"+a,"".concat(t,"-").concat(i,"-").concat(a)},toggleTab:function(e){this.$refs[e].show()}}};r.default=n}}]);