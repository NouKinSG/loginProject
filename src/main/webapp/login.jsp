<%--
  Created by IntelliJ IDEA.
  User: xiaojin
  Date: 2023/3/5
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>

<div style="text-align: center">

    <form action="login" method="post" id="loginForm">

        姓名：<input type="text" name="uname" id="uname"> <br>
        密码：<input type="password" name="upwd" id="upwd"><br>
            <span id="msg" style="font-size: 12px;color: #ff0000"></span> <br>

        <button type="button" id="loginBtn">登录</button>
        <button type="button">注册</button>


    </form>


</div>

</body>
<%--引入Jquery文件--%>
<script src="JS/jquery-3.6.3.min.js"></script>
<script type="text/javascript">

    /*
    * 2.2.1 给登录按钮绑定点击事件 (通过id选择器)
               .2 获取用户姓名和密码的值
               .3 判断姓名是否为空
                    如果姓名为空，提示用户(span标签赋值），并且return
               .4 判断密码是否为空
                    如果密码为空，提示用户（span标签赋值），并且return
               .5 如果都不为空，则手动提交表单
    * */


    $("#loginBtn").click(function (){
            var uname = $("#uname").val();
            var upwd = $("#upwd").val();
            //判断姓名是否为空
            if(isEmpty(uname)){
                //如果姓名为空，提示用户(span标签赋值），并且return  html()
                $("#msg").html("用户姓名不可为空！" );
                return ;
            }
            if(isEmpty(upwd)){
                // 如果密码为空，提示用户（span标签赋值），并且return
                $("#msg").html("用户姓名不可为空！" );
                return;
            }
        //     如果不为空，则手动提交表单SS
            $("#loginForm").submit();
        })

    /**
     * 判断字符串是否为空
     *      如果为空，返回true
     *      如果不为空，返回false
     * @param str
     * @returns {boolean}
     */
        function isEmpty(str){
            return str == null || str.trim() == "";


        }

</script>

</html>
