<template>
  <div>
        <div class="container">
      <div class="login-form">
        <h1 class="h1">优选驾考小程序注册</h1>
		<el-form ref="rgsForm" class="rgs-form" :model="rgsForm">
			<!-- <div v-if="tableName=='xueyuan'" class="input-group">
			   <div class="label">学员账号</div>
			   <div class="input-container">
			     <input v-model="ruleForm.xueyuanzhanghao" class="input" type="text" placeholder="学员账号">
			   </div>
			 </div> -->
			<el-form-item label="学员账号" class="input" v-if="tableName=='xueyuan'">
			  <el-input v-model="ruleForm.xueyuanzhanghao" autocomplete="off" placeholder="学员账号"  />
			</el-form-item>
			<!-- <div v-if="tableName=='xueyuan'" class="input-group">
			   <div class="label">密码</div>
			   <div class="input-container">
			     <input v-model="ruleForm.mima" class="input" type="text" placeholder="密码">
			   </div>
			 </div> -->
			<el-form-item label="密码" class="input" v-if="tableName=='xueyuan'">
			  <el-input v-model="ruleForm.mima" autocomplete="off" placeholder="密码" type="password"#elsetype="text" />
			</el-form-item>
			<!-- <div v-if="tableName=='xueyuan'" class="input-group">
			   <div class="label">学员姓名</div>
			   <div class="input-container">
			     <input v-model="ruleForm.xueyuanxingming" class="input" type="text" placeholder="学员姓名">
			   </div>
			 </div> -->
			<el-form-item label="学员姓名" class="input" v-if="tableName=='xueyuan'">
			  <el-input v-model="ruleForm.xueyuanxingming" autocomplete="off" placeholder="学员姓名"  />
			</el-form-item>
			<!-- <div v-if="tableName=='xueyuan'" class="input-group">
			   <div class="label">年龄</div>
			   <div class="input-container">
			     <input v-model="ruleForm.nianling" class="input" type="text" placeholder="年龄">
			   </div>
			 </div> -->
			<el-form-item label="年龄" class="input" v-if="tableName=='xueyuan'">
			  <el-input v-model="ruleForm.nianling" autocomplete="off" placeholder="年龄"  />
			</el-form-item>
			<!-- <div v-if="tableName=='xueyuan'" class="input-group">
			   <div class="label">手机</div>
			   <div class="input-container">
			     <input v-model="ruleForm.shouji" class="input" type="text" placeholder="手机">
			   </div>
			 </div> -->
			<el-form-item label="手机" class="input" v-if="tableName=='xueyuan'">
			  <el-input v-model="ruleForm.shouji" autocomplete="off" placeholder="手机"  />
			</el-form-item>
			<!-- <div v-if="tableName=='xueyuan'" class="input-group">
			   <div class="label">身份证</div>
			   <div class="input-container">
			     <input v-model="ruleForm.shenfenzheng" class="input" type="text" placeholder="身份证">
			   </div>
			 </div> -->
			<el-form-item label="身份证" class="input" v-if="tableName=='xueyuan'">
			  <el-input v-model="ruleForm.shenfenzheng" autocomplete="off" placeholder="身份证"  />
			</el-form-item>
			<!-- <div v-if="tableName=='jiaxiao'" class="input-group">
			   <div class="label">驾校账号</div>
			   <div class="input-container">
			     <input v-model="ruleForm.jiaxiaozhanghao" class="input" type="text" placeholder="驾校账号">
			   </div>
			 </div> -->
			<el-form-item label="驾校账号" class="input" v-if="tableName=='jiaxiao'">
			  <el-input v-model="ruleForm.jiaxiaozhanghao" autocomplete="off" placeholder="驾校账号"  />
			</el-form-item>
			<!-- <div v-if="tableName=='jiaxiao'" class="input-group">
			   <div class="label">密码</div>
			   <div class="input-container">
			     <input v-model="ruleForm.mima" class="input" type="text" placeholder="密码">
			   </div>
			 </div> -->
			<el-form-item label="密码" class="input" v-if="tableName=='jiaxiao'">
			  <el-input v-model="ruleForm.mima" autocomplete="off" placeholder="密码" type="password"#elsetype="text" />
			</el-form-item>
			<!-- <div v-if="tableName=='jiaxiao'" class="input-group">
			   <div class="label">驾校名称</div>
			   <div class="input-container">
			     <input v-model="ruleForm.jiaxiaomingcheng" class="input" type="text" placeholder="驾校名称">
			   </div>
			 </div> -->
			<el-form-item label="驾校名称" class="input" v-if="tableName=='jiaxiao'">
			  <el-input v-model="ruleForm.jiaxiaomingcheng" autocomplete="off" placeholder="驾校名称"  />
			</el-form-item>
			<!-- <div v-if="tableName=='jiaxiao'" class="input-group">
			   <div class="label">联系人</div>
			   <div class="input-container">
			     <input v-model="ruleForm.lianxiren" class="input" type="text" placeholder="联系人">
			   </div>
			 </div> -->
			<el-form-item label="联系人" class="input" v-if="tableName=='jiaxiao'">
			  <el-input v-model="ruleForm.lianxiren" autocomplete="off" placeholder="联系人"  />
			</el-form-item>
			<!-- <div v-if="tableName=='jiaxiao'" class="input-group">
			   <div class="label">联系电话</div>
			   <div class="input-container">
			     <input v-model="ruleForm.lianxidianhua" class="input" type="text" placeholder="联系电话">
			   </div>
			 </div> -->
			<el-form-item label="联系电话" class="input" v-if="tableName=='jiaxiao'">
			  <el-input v-model="ruleForm.lianxidianhua" autocomplete="off" placeholder="联系电话"  />
			</el-form-item>
			<!-- <div v-if="tableName=='jiaxiao'" class="input-group">
			   <div class="label">身份证</div>
			   <div class="input-container">
			     <input v-model="ruleForm.shenfenzheng" class="input" type="text" placeholder="身份证">
			   </div>
			 </div> -->
			<el-form-item label="身份证" class="input" v-if="tableName=='jiaxiao'">
			  <el-input v-model="ruleForm.shenfenzheng" autocomplete="off" placeholder="身份证"  />
			</el-form-item>
			<!-- <div v-if="tableName=='jiaxiao'" class="input-group">
			   <div class="label">驾校地址</div>
			   <div class="input-container">
			     <input v-model="ruleForm.jiaxiaodizhi" class="input" type="text" placeholder="驾校地址">
			   </div>
			 </div> -->
			<el-form-item label="驾校地址" class="input" v-if="tableName=='jiaxiao'">
			  <el-input v-model="ruleForm.jiaxiaodizhi" autocomplete="off" placeholder="驾校地址"  />
			</el-form-item>
			<div style="display: flex;flex-wrap: wrap;width: 100%;justify-content: center;">
				<el-button class="btn" type="primary" @click="login()">注册</el-button>
				<el-button class="btn close" type="primary" @click="close()">取消</el-button>
			</div>
		</el-form>
      </div>
      <!-- <div class="nk-navigation">
        <a href="#">
          <div @click="login()">注册</div>
        </a>
      </div> -->
    </div>
  </div>
</template>
<script>


export default {
  data() {
    return {
      ruleForm: {
      },
      tableName:"",
      rules: {},
    };
  },
  mounted(){
    let table = this.$storage.get("loginTable");
    this.tableName = table;
      },
  created() {
    
  },
  methods: {
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    close(){
	this.$router.push({ path: "/login" });
    },
    // 注册
    login() {
	var url=this.tableName+"/register";
      if((!this.ruleForm.xueyuanzhanghao) && `xueyuan` == this.tableName){
        this.$message.error(`学员账号不能为空`);
        return
      }
      if((!this.ruleForm.mima) && `xueyuan` == this.tableName){
        this.$message.error(`密码不能为空`);
        return
      }
      if((!this.ruleForm.xueyuanxingming) && `xueyuan` == this.tableName){
        this.$message.error(`学员姓名不能为空`);
        return
      }
      if(`xueyuan` == this.tableName && this.ruleForm.nianling&&(!this.$validate.isIntNumer(this.ruleForm.nianling))){
        this.$message.error(`年龄应输入整数`);
        return
      }
      if(`xueyuan` == this.tableName && this.ruleForm.shouji&&(!this.$validate.isMobile(this.ruleForm.shouji))){
        this.$message.error(`手机应输入手机格式`);
        return
      }
      if(`xueyuan` == this.tableName && this.ruleForm.shenfenzheng&&(!this.$validate.checkIdCard(this.ruleForm.shenfenzheng))){
        this.$message.error(`身份证应输入身份证格式`);
        return
      }
      if((!this.ruleForm.jiaxiaozhanghao) && `jiaxiao` == this.tableName){
        this.$message.error(`驾校账号不能为空`);
        return
      }
      if((!this.ruleForm.mima) && `jiaxiao` == this.tableName){
        this.$message.error(`密码不能为空`);
        return
      }
      if((!this.ruleForm.jiaxiaomingcheng) && `jiaxiao` == this.tableName){
        this.$message.error(`驾校名称不能为空`);
        return
      }
      if(`jiaxiao` == this.tableName && this.ruleForm.lianxidianhua&&(!this.$validate.isMobile(this.ruleForm.lianxidianhua))){
        this.$message.error(`联系电话应输入手机格式`);
        return
      }
      if(`jiaxiao` == this.tableName && this.ruleForm.shenfenzheng&&(!this.$validate.checkIdCard(this.ruleForm.shenfenzheng))){
        this.$message.error(`身份证应输入身份证格式`);
        return
      }
      this.$http({
        url: url,
        method: "post",
        data:this.ruleForm
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.$message({
            message: "注册成功",
            type: "success",
            duration: 1500,
            onClose: () => {
              this.$router.replace({ path: "/login" });
            }
          });
        } else {
          this.$message.error(data.msg);
        }
      });
    }
  }
};
</script>
<style lang="scss" scoped>
	.el-radio__input.is-checked .el-radio__inner {
		border-color: #00c292;
		background: #00c292;
	}

	.el-radio__input.is-checked .el-radio__inner {
		border-color: #00c292;
		background: #00c292;
	}

	.el-radio__input.is-checked .el-radio__inner {
		border-color: #00c292;
		background: #00c292;
	}

	.el-radio__input.is-checked+.el-radio__label {
		color: #00c292;
	}

	.el-radio__input.is-checked+.el-radio__label {
		color: #00c292;
	}

	.el-radio__input.is-checked+.el-radio__label {
		color: #00c292;
	}

	.h1 {
		margin-top: 10px;
	}

	body {
		padding: 0;
		margin: 0;
	}

	// .container {
 //    min-height: 100vh;
 //    text-align: center;
 //    // background-color: #00c292;
 //    padding-top: 20vh;
 //    background-image: url(../assets/img/bg.jpg);
 //    background-size: 100% 100%;
 //    opacity: 0.9;
 //  }

	// .login-form:before {
	// 	vertical-align: middle;
	// 	display: inline-block;
	// }

	// .login-form {
	// 	max-width: 500px;
	// 	padding: 20px 0;
	// 	width: 80%;
	// 	position: relative;
	// 	margin: 0 auto;

	// 	.label {
	// 		min-width: 60px;
	// 	}

	// 	.input-group {
	// 		max-width: 500px;
	// 		padding: 20px 0;
	// 		width: 80%;
	// 		position: relative;
	// 		margin: 0 auto;
	// 		display: flex;
	// 		align-items: center;

	// 		.input-container {
	// 			display: inline-block;
	// 			width: 100%;
	// 			text-align: left;
	// 			margin-left: 10px;
	// 		}

	// 		.icon {
	// 			width: 30px;
	// 			height: 30px;
	// 		}

	// 		.input {
	// 			position: relative;
	// 			z-index: 2;
	// 			float: left;
	// 			width: 100%;
	// 			margin-bottom: 0;
	// 			box-shadow: none;
	// 			border-top: 0px solid #ccc;
	// 			border-left: 0px solid #ccc;
	// 			border-right: 0px solid #ccc;
	// 			border-bottom: 1px solid #ccc;
	// 			padding: 0px;
	// 			resize: none;
	// 			border-radius: 0px;
	// 			display: block;
	// 			width: 100%;
	// 			height: 34px;
	// 			padding: 6px 12px;
	// 			font-size: 14px;
	// 			line-height: 1.42857143;
	// 			color: #555;
	// 			background-color: #fff;
	// 		}

	// 	}
	// }

	.nk-navigation {
		margin-top: 15px;

		a {
			display: inline-block;
			color: #fff;
			background: rgba(255, 255, 255, .2);
			width: 100px;
			height: 50px;
			border-radius: 30px;
			text-align: center;
			display: flex;
			align-items: center;
			margin: 0 auto;
			justify-content: center;
			padding: 0 20px;
		}

		.icon {
			margin-left: 10px;
			width: 30px;
			height: 30px;
		}
	}

	.register-container {
		margin-top: 10px;

		a {
			display: inline-block;
			color: #fff;
			max-width: 500px;
			height: 50px;
			border-radius: 30px;
			text-align: center;
			display: flex;
			align-items: center;
			margin: 0 auto;
			justify-content: center;
			padding: 0 20px;

			div {
				margin-left: 10px;
			}
		}
	}

	.container {
		height: 100vh;
		background-position: center center;
		background-size: cover;
		background-repeat: no-repeat;
    				background-image: url(http://codegen.caihongy.cn/20210307/d09089cb94194cdfb0a53c2edeb87136.jpg);
		    
		.login-form {
			right: 50%;
			top: 50%;
			transform: translate3d(50%, -50%, 0);
			border-radius: 10px;
			background-color: rgba(255,255,255,.5);
			font-size: 14px;
			font-weight: 500;
      box-sizing: border-box;

			width: 450px;
			height: auto;
			padding: 0;
			margin: 0;
			border-radius: 50px;
			border-width: 3px;
			border-style: solid;
			border-color: rgba(36, 139, 146, 1);
			background-color: rgba(255, 255, 255, 0.9);
			box-shadow: 0 0 0px 15px rgba(255, 255, 255, 1);

			.h1 {
				width: 360px;
				height: 35px;
				line-height:35px;
				color: #000;
				font-size: 18px;
				padding: 0;
				margin: 10px 0px 20px 32px;
				border-radius: 0;
				border-width: 0;
				border-style: solid;
				border-color: rgba(237, 237, 237, 1);
				background-color: rgba(255, 215, 0, 0);
				box-shadow: 0 0 6px rgba(255,0,0,0);
				text-align: center;
			}

			.rgs-form {
				display: flex;
				flex-direction: column;
				justify-content: center;
				align-items: center;

        .el-form-item {
          width: 100%;
          display: flex;

          & /deep/ .el-form-item__content {
            flex: 1;
            display: flex;
          }
        }

				.input {
          width: 360px;
          height:40px;
          padding: 0;
          margin: 0px 0px 10px 50px;
          border-radius: 0;
          border-width: 0;
          border-style: solid;
          border-color: rgba(255,0,0,0);
          background-color: rgba(144, 238, 144, 0);
          box-shadow: 0 0 6px rgba(255,0,0,0);

					& /deep/ .el-form-item__label {
            width: 80px;
            line-height:40px;
            color: rgba(0, 0, 0, 1);
            font-size: 16px;
            padding: 0px 0px 0px 0px;
            margin: 0px 0px 0px -15px;
            border-radius: 0;
            border-width: 0;
            border-style: solid;
            border-color: rgba(255,0,0,0);
            background-color: rgba(144, 238, 144, 0);
            box-shadow: 0 0 6px rgba(255,0,0,0);
					}

					& /deep/ .el-input__inner {
            width: 200px;
            height: 40px;
            line-height:40px;
            color: #606266;
            font-size: 14px;
            padding: 0px  0px 0px 10px;
            margin: 0px 0px 0px 10px;
            border-radius: 20px;
            border-width: 3px;
            border-style: solid;
            border-color: rgba(28, 129, 137, 1);
            background-color: rgba(255, 255, 255, 1);
            box-shadow: 0 0 6px rgba(255,0,0,0);
            text-align: left;
					}
				}

        .send-code {
          & /deep/ .el-input__inner {
            width: 120px;
            height: 40px;
            line-height:40px;
            color: #606266;
            font-size: 14px;
            padding: 0px 12px 0px 0px;
            margin: 0px 0px 0px 10px;
            border-radius: 20px 0px 0px 20px;
            border-width: 3px;
            border-style: solid;
            border-color: rgba(36, 139, 146, 1);
            background-color: rgba(255, 255, 255, 0.8);
            box-shadow: 0 0 6px rgba(255,0,0,0);
            text-align: left;
          }

          .register-code {
            margin: 0px 0px 0px 0px;
            padding: 5px;
            width: 80px;
            height: 40px;
            line-height:40px;
            color: #fff;
            font-size: 14px;
            border-width: 0;
            border-style: solid;
            border-color: rgba(255,0,0,0);
            border-radius: 0 20px 20px 0;
            background-color: rgba(96, 98, 102, 1);
            box-shadow: 0 0 6px rgba(255,0,0,0);
          }
        }

				.btn {
					margin: 10px 60px 40px 0px ;
          padding: 0;
					width: 88px;
					height: 32px;
          line-height:32px;
					color: #fff;
					font-size: 14px;
					border-width: 0;
					border-style: solid;
					border-color: #409EFF;
					border-radius: 20px;
					background-color: rgba(255, 215, 0, 1);
          box-shadow: 0 0 0px 4px rgba(255,255,255,1);
				}

				.close {
          margin: 10px 20px 40px 0px;
          padding: 0;
          width: 88px;
          height: 32px;
          line-height:32px;
          color: rgba(255, 255, 255, 1);
          font-size: 14px;
          border-width: 0;
          border-style: solid;
          border-color: #409EFF;
          border-radius: 20px;
          background-color: rgba(36, 139, 146, 1);
          box-shadow: 0 0 0px 5px rgba(255,255,255,1);
				}

			}
		}
	}
</style>
