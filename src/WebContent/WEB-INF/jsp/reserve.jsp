<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>予約確認 | Hydrangea</title>
<link rel="stylesheet" href="css/header_footer.css"><!-- ヘッダーフッター用css -->
<link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->
</head>
<body>
<!--ここからヘッダー-->
<header class = header>
        <h1><a href="/hydrangea/MenuServlet"><img src="img/logo.png" alt="アプリロゴ" ></a></h1><!-- メニュー画面に戻る -->
        <p id="title">予約確認</p>
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
                    <a href="/hydrangea/LogoutServlet">ログアウト</a>
                </li>
            </ul>
            </div>
            <!--ここまでメニュー-->
        </div>
</header>
<!--ここから内容-->
<div class="contents">
    <p><a href="/hydrangea/ShopDetailServlet">前のページに戻る</a></p><br> <!--店詳細画面に戻る-->

   <form method="POST" action="/hydrangea/CalenderServlet"><!--servlet名、要チェック-->
    <table>
        <tr>
            <th>店名</th><!--履歴予約DB-->
            <td><c:out value="${e.shop_name}"/></td><!--shopsDBから-->
        </tr>
        <tr>
            <th>日付</th>
            <td><input type="date" name="apointment_date">


            </td>
        </tr>
        <tr>
            <th>時間</th>
            <td><input type = "text" name="apointment_time" value=""></input></td>
        </tr>
        <tr>
            <th>部署</th>
            <td><input type = "text" name="position" value=""></input></td><!--usersDBから-->
        </tr>
        <tr>
            <th>人数</th>
            <td><input type = "text" name="capacity" value=""></input></td>
        </tr>
        <tr>
            <th>備考</th>
            <td><input type = "text" name="remarks_reserve" value=""></input></td>
        </tr>
    </table>
        <input type="reset" name="reset" value="クリア" ><br>

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
</html>