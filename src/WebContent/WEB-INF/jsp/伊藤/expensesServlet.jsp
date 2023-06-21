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
    <style>
        .menu-btn {
        position: fixed;
        top: 10px;
        right: 10px;
        display: flex;
        height: 60px;
        width: 60px;
        justify-content: center;
        align-items: center;
        z-index: 90;
        background-color: #eeece9;
    }
    .menu-btn span,
    .menu-btn span:before,
    .menu-btn span:after {
        content: '';
        display: block;
        height: 3px;
        width: 25px;
        border-radius: 3px;
        background-color: black;
        position: absolute;
    }
    .menu-btn span:before {
        bottom: 8px;
    }
    .menu-btn span:after{
        top: 8px;
    }
    #menu-btn-check:checked ~ .menu-btn span {
        background-color: rgba(255, 255, 255, 0);/*メニューオープン時は真ん中の線を透明にする*/
    }
    #menu-btn-check:checked ~ .menu-btn span::before {
        bottom: 0;
        transform: rotate(45deg);
    }
    #menu-btn-check:checked ~ .menu-btn span::after {
        top: 0;
        transform: rotate(-45deg);
    }
    #menu-btn-check {
        display: none;
    }
    .menu-content {
        width: 25%;
        height: 100%;
        position: fixed;
        top: 0;
        right: 100%;/*leftの値を変更してメニューを画面外へ*/
        z-index: 80;
        background-color: #c0c0c0;
        transition: all 0.5s;/*アニメーション設定*/
    }
    .menu-content ul {
        padding: 70px 10px 0;
    }
    .menu-content ul li {
        border-bottom: solid 1px #000000;
        list-style: none;
    }
    .menu-content ul li a {
        display: block;
        width: 100%;
        font-size: 15px;
        box-sizing: border-box;
        color:#000000;
        text-decoration: none;
        padding: 9px 15px 10px 0;
        position: relative;
    }
    .menu-content ul li a::before {
        content: "";
        width: 7px;
        height: 7px;
        border-top: solid 2px #000000;
        border-right: solid 2px #000000;
        transform: rotate(45deg);
        position: absolute;
        right: 11px;
        top: 16px;
    }
    #menu-btn-check:checked ~ .menu-content {
        right: 0;/*メニューを画面内へ*/
    }
    .menu-content a:hover {
        /*color: #e3937a;*/
        font-weight:800;
    }
    .menu-content a:active {
        color: blue;
    }


    </style>
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
		<td><input type="submit" name="SUBMIT" value="作成"><br></td>
		<td><input type="submit" name="SUBMIT" value="戻る"><br></td>
    </tr>

</table>

</form>
</body>
<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
</html>