<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>幹事サポート</title>
   <link rel="stylesheet" href="menu/common.css">
</head>
<header>
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

    <h1>役職メモ</h1>
    <hr>
    <form method="POST" action="/hydrangea/PositionmemoServlet">

            <input type="submit" name="SUBMIT" value="追加">
            <input type="submit" name="SUBMIT" value="削除">
            <input type="submit" name="SUBMIT" value="更新"><br>

            <table>
                <tr>
                  <td>
                    <label>名前<br>
                    <input type="text" name="NAME_POSITION" >
                    </label>
                  </td>
                  <td>
                    <label>役職<br>
                    <input type="text" name="POSITION">
                    </label>
                  </td>
                  <td>
                    <label>喫煙<br>
                    <input type="text" name="TABACO_POSITION">
                    </label>
                  </td>
                  <td>
                    <label>好物1<br>
                    <input type="text" name="FAVORITE1">
                    </label>
                  </td>
                  <td>
                    <label>好物2<br>
                    <input type="text" name="FAVORITE2">
                    </label>
                  </td>
                  <td>
                    <label>NG<br>
                    <input type="text" name="NG">
                    </label>
                  </td>
                  <td>
                    <label>備考<br>
                    <input type="text" name="REMARKS_POSITION">
                    </label>
                  </td>
                  </tr>
            </table>


    </form>


</body>

<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>

</html>