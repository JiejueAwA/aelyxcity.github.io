<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerifyCard.aspx.cs" Inherits="CardVerify.VerifyCard" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>卡密验证 - Aelyxcity</title>
    <link rel="icon" href="icon.png">
    <style>
        body {
            background-image: url("bag.png");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
            padding: 20px;
            margin: 0;
        }

        .navbar {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 10px;
            display: flex;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 999;
        }

        .navbar-logo img {
            height: 40px;
            margin-right: 10px;
        }

        .navbar ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: flex-end;
        }

        .navbar li {
            margin-left: 30px;
        }

        .navbar a {
            color: #FFF;
            text-decoration: none;
            font-size: 18px;
        }

        .content {
            max-width: 800px;
            margin: 0 auto;
            background-color: rgba(255, 255, 255, 0.7);
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
        }

        .title {
            text-align: center;
            font-family: "Mi Sans Bold", Arial, sans-serif;
            font-size: 24px;
            color: #000;
            margin-bottom: 20px;
        }

        .subtitle {
            text-align: center;
            color: #666;
            font-size: 16px;
            margin-bottom: 20px;
        }

        /* 添加验证卡密容器的样式 */
        .verify-container {
            margin-top: 200px;
            text-align: center;
        }

        .verify-container h2 {
            font-size: 36px;
            color: #000;
            margin-bottom: 20px;
        }

        .verify-box {
            width: 300px;
            margin: 0 auto;
            border: 1px solid #000;
            border-radius: 5px;
            padding: 10px;
            background-color: rgba(0, 0, 0, 0.5);
            opacity: 0.5;
        }

        .verify-box input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: none;
            border-radius: 5px;
            background-color: transparent;
            color: #FFF;
        }

        .verify-box input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-image: url("anniu.png");
            background-size: cover;
            color: #FFF;
            font-size: 18px;
            cursor: pointer;
        }

        /* 添加错误提示框样式 */
        .error-overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 0, 0, 0);
            z-index: 1000;
            transition: background-color 0.3s;
        }

        .error-box {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #000;
            border-radius: 5px;
            padding: 20px;
            color: #FFF;
            font-size: 18px;
            z-index: 1001;
            opacity: 0;
            transition: opacity 0.3s;
        }

        .error-box h3 {
            margin: 0;
            padding: 0;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .error-box p {
            margin: 0;
            padding: 0;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div class="navbar-logo">
            <a href="index.html"><img src="logo.png" alt="Logo"></a>
        </div>
        <ul>
            <li><a href="https://www.mcend.shop/?code=YT0xMiZiPTgy">购买</a></li>
            <li><a href="uplogs.html">更新日志</a></li>
            <li><a href="aboutwe.html">关于我们</a></li>
            <li><a href="sb.html">友情链接</a></li>
            <li><a href="other.html">其他项目</a></li>
			<li><a href="VerifyCard.aspx">卡密验证</a></li>
        </ul>
    </div>

    <div class="verify-container">
        <h2>卡密验证</h2>
        <div class="verify-box">
            <input type="text" id="cardCode" placeholder="输入卡密">
            <input type="submit" value="验证" onclick="return verifyCard()">
        </div>
    </div>

    <div class="error-overlay" onclick="hideError()">
        <div class="error-box">
            <h3>卡密验证系统</h3>
            <p>无效或过期的卡密，请检查或重新购买</p>
            <input type="submit" value="关闭" onclick="hideError()">
        </div>
    </div>

    <script src="Scripts/verify.js"></script>
</body>
</html>
