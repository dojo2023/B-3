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
<tr>
<th>名前</th>
<td><input type="text" name="NAME"></td>

<th>役職</th>
<td><input type="text" name="POSITION"></td>
</tr>
<tr>
<th>喫煙</th>
<td><input type="text" name="SMOKING"></td>

<th>好物1</th>
<td><input type="text" name="FAVORITE1"></td>
</tr>
<tr>
<th>好物2</th>
<td><input type="text" name="FAVORITE2"></td>
</tr>
<tr>
<th>NG</th>
<td><input type="text" name="NG"></td>
</tr>
<tr>
<th>備考</th>
<td><input type="text" name="REMARKS"></td>
</tr>
</table>

</form>
</body>

<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>

</html>