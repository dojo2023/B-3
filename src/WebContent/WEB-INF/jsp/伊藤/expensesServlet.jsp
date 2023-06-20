<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<h1>経費申請書テンプレート</h1>
<hr>
<form method="POST" action="">
<table id="">


    <p>経費申請書</p>

    <tr>
        <td>
            <label>更新日：
                <input type="date" id="start" name="trip-start"
                value="2023-06-01"
                min="2023-01-01" max="2100-12-31"><br>
            </label>
        </td>
    </tr>

    <tr>
        <td>
            <label>申請者：
                <input type="text" name="APPLICANT" value=""><br>
            </label>
        </td>
    </tr>
</table>
<table>
<tr><th>日付</th><th>内容</th><th>支払先</th><th>金額</th><th>備考</th></tr>

<tr><td><input type="text" name="DATE"></td>

<td><input type="text" name="CONTENT"></td>

<td><input type="text" name="PAYABLE"></td>


<td><input type="text" name="MONEY"></td>

<td><input type="text" name="REMARKS"></td></tr>

</table>

<table>

<tr><th>領収書添付欄</th></tr>
    <tr>
        <td>
            <textarea cols="50" rows="10"></textarea>
        </td>
    </tr>

    <tr>
        <td><input type="submit" name="SUBMIT" value="送信"><br></td>
    </tr>

</table>

</form>
</body>
<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
</html>