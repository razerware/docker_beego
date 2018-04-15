<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <link rel="shortcut icon" href="/static/img/favicon.ico">

        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <title>{{.siteName}} 登录</title>
        <link rel="stylesheet" href="/static/layui/css/layui.css?t=1504439386550" media="all">
        <link rel="stylesheet" href="/static/css/lzy.css" />
    </head>
    <body>
        <div class="layui-carousel video_mask bg-img" id="login_carousel" >

            <div class="login layui-anim layui-anim-up">
                <h1>服务创新容器管理平台</h1></p>
                <form class="layui-form" action="" method="post">
                    <div class="layui-form-item">
                        <input type="text" name="username" lay-verify="required" placeholder="请输入账号" autocomplete="off"  value="{{.username}}" class="layui-input">
                    </div>
                    <div class="layui-form-item">
                        <input type="password" name="password" lay-verify="required" placeholder="请输入密码" autocomplete="off" value="" class="layui-input">
                    </div>
                    <button class="layui-btn login_btn" lay-submit="" lay-filter="login">登陆系统</button>
                </form>
            </div>
        </div>
        <script src="/static/layui/layui.js?t=1504439386550" charset="utf-8"></script>
        <script src="https://cdn.bootcss.com/jquery/1.8.3/jquery.js"></script>
        <script type="text/javascript">
            layui.use(['layer','form'], function(){
                var layer = layui.layer; //弹层
                var form = layui.form;
                var error_info = "{{.flash.error}}";
                if(error_info){
                    layer.msg(error_info,{time:2000,offset: '100px'});
                }

	   //          form.on('submit(login)', function(data){
	   //          	console.log(data.field)	
				//     $.post('/login', JSON.stringify(data.field), function(){
				//   		location.reload();
				//     });
				//     return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
				// });
            })
        </script>
    </body>
</html>



