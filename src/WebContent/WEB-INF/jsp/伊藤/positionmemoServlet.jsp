<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>幹事サポート</title>
</head>
<header>
    <div class="hamburger-menu">
        <input type="checkbox" id="menu-btn-check">
        <label for="menu-btn-check" class="menu-btn"><span></span></label>
        <!--ここからメニュー-->
        <div class="menu-content">
            <ul>
                <li>
                    <a href="">トップ</a>
                </li>
                <li>
                    <a href="">登録</a>
                </li>
                <li>
                    <a href="">履歴</a>
                </li>
                <li>
                    <a href="">役職メモ</a>
                </li>
                <li>
                    <a href="">メモ</a>
                </li>
                <li>
                    <a href="">カレンダー</a>
                </li>
        <li>
                    <a href="">通知文テンプレート</a>
                </li>
        <li>
                    <a href="">経費申請書テンプレート</a>
                </li>
        <li>
                    <a href="">ログアウト</a>
                </li>
            </ul>
        </div>
        <!--ここまでメニュー-->
    </div>
</header>
<body>
<h1>役職メモ</h1>
<hr>
<form method="POST" action="/B1/RegistServlet">
<table id="regist_table">

    <input type="submit" name="SUBMIT" value="追加">
	<input type="submit" name="SUBMIT" value="削除"><br>
<tr><th>名前</th><th>役職</th><th>喫煙</th><th>好物1</th><th>好物2</th><th>NG</th><th>備考</th></tr>

<tr><td><input type="text" name="NAME"></td>

<td><input type="text" name="POSITION"></td>

<td><input type="text" name="SMOKING"></td>


<td><input type="text" name="FAVORITE1"></td>

<td><input type="text" name="FAVORITE2"></td>

<td><input type="text" name="NG"></td>

<td><input type="text" name="REMARKS"></td></tr>
</table>

</form>
</body>

<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>

</html>