<!DOCTYPE html>
<!-- saved from url=(0089)http://www.gbtags.com/gb/networks/uploads/fb20e021-8683-4a71-904e-e96d47495e1e/index.html -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/static/css/font-awesome.min.css">

    <style>
        body{
            font-family: 'microsoft yahei',Arial,sans-serif;
            background-color: #222;
        }

        .redborder {
            border:2px solid #f96145;
            border-radius:2px;
        }

        .row {
            padding: 20px 0px;
        }

        .bigicon {
            font-size: 97px;
            color: #f08000;
        }

        .loginpanel {
            text-align: center;
            width: 300px;
            border-radius: 0.5rem;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            margin: 10px auto;
            background-color: #555;
            padding: 20px;
            margin-top: 120px;
        }

        input {
            width: 100%;
            margin-bottom: 17px;
            padding: 15px;
            background-color: #ECF4F4;
            border-radius: 2px;
            border: none;
        }

        h2 {
            margin-bottom: 20px;
            font-weight: normal;
            color: #EFEFEF;
        }

        .btn {
            border-radius: 2px;
            padding: 10px;
        }

        .btn span {
            font-size: 27px;
            color: white;
        }

        .buttonwrapper{
            position:relative;
            overflow:hidden;
            height:50px;
        }

        .lockbutton {
            font-size: 27px;
            color: #f96145;
            padding: 10px;
            width:100%;
            position:absolute;
            top:0;
            left:0;
        }

        .loginbutton {
            background-color: #f08000;
            width: 100%;
            -webkit-border-top-right-radius: 0;
            -webkit-border-bottom-right-radius: 0;
            -moz-border-radius-topright: 0;
            -moz-border-radius-bottomright: 0;
            border-top-right-radius: 0;
            border-bottom-right-radius: 0;
            left: -260px;
            position:absolute;
            top:0;
        }
    </style>
    <script type="text/javascript" src="/static/js/jquery-1.10.2.min.js"></script><style type="text/css"></style>
    <script type="text/javascript" src="/static/js/bootstrap.min.js"></script>

</head>
<body>

<!-- Interactive Login - START -->
<div class="container-fluid">
    <div class="row">
        <div class="loginpanel">
            <i id="loading" class="hidden fa fa-spinner fa-spin bigicon"></i>
            <h2>
                <span id="msg">{{.msg}}</span>
            </h2>
            <div>
                <form id="loginForm" action="/login" method="post">
                    <input id="name" name="name" type="text" placeholder="登录账号">
                    <input id="password" name="password" type="password" placeholder="输入密码">
                </form>
                <div class="buttonwrapper">
                    <button class="btn btn-warning loginbutton" style="left: 0px;" onclick="login()">
                        <span class="fa">登录</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">

    function login() {
        if ($("#name").val().length != 0 && $("#password").val().length != 0) {
            $("#loginForm").submit()
        }else{
            alert("用户名密码不能为空!");
        }
    }

</script>

</body></html>