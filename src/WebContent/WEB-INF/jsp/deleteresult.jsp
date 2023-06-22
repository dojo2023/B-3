<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>問い合わせ結果 | Hydrangea</title>
<link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->

<!--サーブレットのリンク--><!--削除の申請結果コメント-->
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
        <h3><c:out value="${shop_name}" /></h3>店名
        <div class ="result">
        <form method="POST" action="/hydrangea/DeleteServlet" autocomplete="off">
        <p><c:out value="${shop_name}" /></p><!--「の」-->
        <p><c:out value="${deleteresult}" /></p>
        </form>
        の削除を申請しました。/削除を申請できませんでした。
        </div>

<p><a href="/hydrangea/MenuServlet">メニューに戻る</a></p> <!--メニュー画面に戻る-->

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

<script>

</script>

</footer>
</body>
</html>