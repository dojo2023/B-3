<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>幹事サポート</title>
   	<link rel="stylesheet" href="css/header_footer.css"><!-- ヘッダーフッター用css -->
   	<link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->
   	<link rel="stylesheet" href="css/memo.css"><!-- メモ専用css -->
</head>
<header>
<h1><a href="/hydrangea/MenuServlet"><img src="img/logo.png" alt="アプリロゴ" ></a></h1><!-- メニュー画面に戻る -->
<p id="memolist">役職メモ一覧</p>
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
<body>
<div class="contents">


    <form method="POST" action="/hydrangea/PositionmemoServlet">

            <input type="submit" name="SUBMIT" value="追加">
            <input type="submit" name="SUBMIT" value="削除">
            <input type="submit" name="SUBMIT" value="更新"><br>

            <table>
                <tr>
                  <td>
                    <label>名前<br>
                    <input type="text" name="NAME_POSITION" size="15" >
                    </label>
                  </td>
                  <td>
                    <label>役職<br>
                    <input type="text" name="POSITION" size="18">
                    </label>
                  </td>
                  <td>
                    <label>喫煙<br>
                    <input type="text" name="TABACO_POSITION"size="5">
                    </label>
                  </td>
                  <td>
                    <label>好物1<br>
                    <input type="text" name="FAVORITE1" size="14">
                    </label>
                  </td>
                  <td>
                    <label>好物2<br>
                    <input type="text" name="FAVORITE2" size="14">
                    </label>
                  </td>
                  <td>
                    <label>NG<br>
                    <input type="text" name="NG" size="14">
                    </label>
                  </td>
                  <td>
                    <label>備考<br>
                    <input type="text" name="REMARKS_POSITION" size="18">
                    </label>
                  </td>
                  </tr>
            </table>


    </form>

</div>


<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
</body>
</html>