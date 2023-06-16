<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- スタイルシート -->
<style>
</style>
<!-- <link rel = "stylesheet" href=""> -->
</head>
<body>
<header>
    <div class="hamburger-menu">
        <input type="checkbox" id="menu-btn-check">
        <label for="menu-btn-check" class="menu-btn"><span></span></label>
        <!--ここからメニュー-->
        <div class="menu-content">
            <ul>
                <li>
                    <a href="">メニュー</a>
                </li>
                <li>
                    <a href="">登録</a>
                </li>
                <li>
                    <a href="">履歴</a>
                </li>
                <li>
                    <a href="">メモ</a>
                </li>
                <li>
                    <a href="">ページ作成・編集</a>
                </li>
        		<li>
                    <a href="">通知</a>
                </li>
        		<li>
                    <a href="">ログアウト</a>
                </li>
            </ul>
        </div>
        <!--ここまでメニュー-->
    </div>
</header>
<a href="/hydrangea/HomeServlet"><img class="logo"src="img/flower_ajisai5_blue_720.png" alt="飲み会幹事アプリ" ></a>
<h2>管理者メニュー</h2>

<div class="admin_menu">
	<div class="admin_menu_contents"><a href="">ページ作成・編集</a></div>
	<div class="admin_menu_contents"><a href="">通知</a></div>
	<div class="admin_menu_contents"><a href="">登録</a></div>
	<div class="admin_menu_contents"><a href="">フリーワード検索</a></div>
	<div class="admin_menu_contents"><a href="">カレンダー</a></div>
	<div class="admin_menu_contents"><a href="">履歴</a></div>
	<div class="admin_menu_contents"><a href="">メモ</a></div>
</div>

<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer> 
</body>
</html>