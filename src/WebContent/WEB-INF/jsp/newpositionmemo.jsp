<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>幹事サポート</title>
    <link rel="stylesheet" href="css/header_footer.css"><!-- ヘッダーフッター用css -->
    <link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->
</head>
<header>
	<h1><a href="/hydrangea/MenuServlet"><img src="img/logo.png" alt="アプリロゴ" ></a></h1><!-- メニュー画面に戻る -->
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
    <h2>役職メモ入力</h2>
  <form method="POST" action="/hydrangea/NewpositionmemoServlet">
    <table>
      <tr>
        <td>
          <label>名前<br>
          <input type="text" name="NAME" >
          </label>
        </td>
        <td>
          <label>役職<br>
          <input type="text" name="POSITION">
          </label>
        </td>
        <td>
          <label>喫煙<br>
          <input type="text" name="SMOKING">
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
          <input type="text" name="REMARKS">
          </label>
        </td>


        <tr>
        <td>
          <input type="submit" id="register" name="SUBMIT" value="保存">
          <input type="reset" name="reset" value="リセット">
          <span id="error_message"></span>
        </td>
      </tr>
    </table>
  </form>
  <!-- メイン（ここまで） -->

<!-- JavaScript（ここから） -->
<script>
var formObj = document.getElementById('register_form');
var errorMessageObj = document.getElementById('error_message');
/* [実行]ボタンをクリックしたときの処理 */
formObj.onsubmit = function() {
  /* 氏名を必須入力項目とします */
  if (!formObj.NAME.value) {
    errorMessageObj.textContent = '※氏名を入力してください！';
    return false;
  }
  errorMessageObj.textContent = null;
};
/* [リセット]ボタンをクリックしたときの処理 */
formObj.onreset = function() {
  errorMessageObj.textContent = null;
};
</script>
<!-- JavaScript（ここまで） -->
</body>

<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>

</html>
