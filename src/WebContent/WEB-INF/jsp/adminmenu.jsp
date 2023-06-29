<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <title>管理者ホーム</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->
    <link rel="stylesheet" href="css/header_footer.css"><!-- ヘッダーフッター用css -->
    <link rel="stylesheet" href="css/calendar.css"><!-- カレンダー用css -->
    <link rel="stylesheet" href="css/adminMenu.css"><!-- 管理者メニュー用css -->

</head>
<body>
   <header>
   		<h1><a href="/hydrangea/MenuServlet"><img src="img/logo.png" alt="アプリロゴ" ></a></h1><!-- メニュー画面に戻る -->
        <div class="hamburger-menu">
            <input type="checkbox" id="menu-btn-check">
            <label for="menu-btn-check" class="menu-btn"><span></span></label>
            <!--ここからメニュー-->
            <div class="menu-content">
                  <ul>
                <li>
                    <a href="/hydrangea/MenuServlet">トップ</a>
                </li>
                <li>
                    <a href="/hydrangea/RegistServlet">登録</a>
                </li>
                <li>
                    <a href="/hydrangea/HistoryServlet">履歴</a>
                </li>
                <li>
                    <a href="/hydrangea/PositionmemoServlet">役職メモ</a>
                </li>
                <li>
                    <a href="/hydrangea/MemoServlet">メモ</a>
                </li>
                <li>
                    <a href="/hydrangea/CalenderServlet">カレンダー</a>
                </li>
        		<li>
                    <a href="/hydrangea/NotificationServlet">通知文テンプレート</a>
                </li>
        		<li>
                    <a href="/hydrangea/ExpensesServlet">経費申請書テンプレート</a>
                </li>
        		<li>
                    <a href="/hydrangea/LogoutServlet">ログアウト</a>
                </li>
            </ul>
            </div>
            <!--ここまでメニュー-->
        </div>
    </header>

<h1>管理者用ページ</h1>
<div class="menu">
		<a href="/hydrangea/NoticeServlet" class="btn">通知</a></div>
		<div class="menu">
		<a href="/hydrangea/InformationCreateServlet" class="btn">ページ作成・編集</a></div>
		<div class="menu">
		<a href="/hydrangea/RegistServlet" class="btn">登録</a>
</div>
		<form method="POST" action="/hydrangea/SearchResultServelt" class="retu" id="form" >

        <input type="text"  placeholder="フリーワード検索">

        <input type="submit" value="検索">

        <br><p >喫煙&nbsp;&nbsp;

            <input type="radio" name="ke" value="">可

            <input type="radio" name="ke" value="">不可</p>

        </form>

        <a href="/hydrangea/CalendarServlet">カレンダー</a>

        <a href="/hydrangea/HistoryServlet">履歴</a>

        <a href="/hydrangea/MemoServlet">メモ</a>

<!--
        <button onclick="/hydrangea/NewShopServlet'" id="button1" class="retu" >ページ作成<br>編集</button>



        <button onclick="/hydrangea/InformationCreateServlet" id="button1" class="retu"></button>



        <button onclick="/hydrangea/RegistServlet" id="button1" class="retu">登録</button>

<button >検索</button>

 <button onclick="/hydrangea/CalendarServlet'" id="button2">カレンダー</button>


        <button onclick="/hydrangea/HistoryServlet'" id="button2">履歴</button>


        <button onclick="/hydrangea/MemoServlet'" id="button2">メモ</button>



-->

        <br>
        <div id="yoko"></div>


</body>
<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
</html>