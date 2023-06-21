<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>削除申請 | Hydrangea</title>
<link rel="stylesheet" href="css/common.css"><!--css名やパス、要チェック-->
</head>
<body>
<!--ここからヘッダー-->
<header class = header>
    <h1 class="logo"><a href="menu.html"><img src="img/logo.png" alt="アプリロゴ" width="100"></a></h1>
    <div class="hamburger-menu"> <!--ハンバーガーメニュー-->
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
                    <a href="/hydrangea/LoginServlet">ログアウト</a>
                </li>
            </ul>
        </div>
        <!--ここまでメニュー-->
    </div>
</header>
<!--ここから内容-->
<div class="contents">
    <p><a href="/hydrangea/ShopDetailServlet">前のページに戻る</a></p> <!--店詳細画面に戻る-->
    <h2>削除申請</h2>
    <form method="post" action="/hydrangea/DeleteServlet">
        <h3><c:out value="${e.shop_name}" />店名</h3>
        <p>を削除する理由を記入してください</p>
        <input type="text" value="reason" name="${e.message}">
        <br>
        <input type="submit" value="削除申請" name="submit">
    </form>
</div>
<!--ここからフッター-->
<footer class="footer">
    <!--管理者へのメッセージ-->
    <!--<form class="contact">
        <p>お問い合わせ</p>
        <input type="textbox" value="問い合わせ内容を記入してください" name="otoiawase">
        <input type="button" value="送信" name="send">
    </form>-->
    <!--著作権-->
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>


</footer>
</body>