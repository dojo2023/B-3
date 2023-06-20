<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <title>管理者ホーム</title>
    <meta charset="UTF-8">
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

    .calendar-container {
      width: 500px;
      margin: 0 auto;
      border-radius: 5px;
      background: #f6f5f4;
      color: #1a1a1a;
    }
    h1 {
      height: 80px;
      line-height: 80px;
      text-align: center;
      font-size: 24px;
      margin: 0;
    }
    .calendar {
      padding: 0 30px 30px 30px;
    }
    table {
      width: 100%;
    }
    th, td {
      text-align: center;
      padding: 10px;
    }
    th {
      font-weight: normal;
      font-size: 14px;
    }
    td {
      font-weight: bold;
    }
    .day *:first-child {
      color: #ff838b;
    }
    .day *:last-child {
      color: #6fb5ff;
    }
    .retu {
        display: inline-block;
    }
    #button1 {
        background-color: white;
        width: 100px;
        height: 100px;
        margin: 6px;

    }
    #button2 {
        background-color: white;
        width: 100px;
        height: 100px;
        margin: 6px;
    }
    #form {
        border: solid 2px;
        width: auto;
        padding: 2px;
        height: 91.25px;
        margin: auto;
    }
    </style>
    </header>
<body style="text-align: center;">
<h1>管理者用ページ</h1>
        <button onclick="location.href='http://localhost:8080/hydrangea/NewShopServlet'" id="button1" class="retu" style="vertical-align: middle;">ページ作成<br>編集</button>
        <button onclick="location.href='http://localhost:8080/hydrangea/InformationCreateServlet'" id="button1" class="retu">通知</button>
        <button onclick="location.href='http://localhost:8080/hydrangea/RegistServlet'" id="button1" class="retu">登録</button>
        <form action="submit" class="retu" id="form" style="vertical-align: middle;"><input type="text" style="margin-right: 3px; border: solid 2px cornflowerblue; height: 26%;" placeholder="フリーワード検索"><button style="border: solid 2px cornflowerblue">検索</button>
            <br><p style="border: solid 2px cornflowerblue;">喫煙&nbsp;&nbsp;<input type="radio" name="ke" value="">可<input type="radio" name="ke" value="">不可</p>
        </form>
        <br>
        <div id="yoko"></div>
        <button onclick="location.href='http://localhost:8080/hydrangea/CalendarServlet'" id="button2">カレンダー</button>
        <button onclick="location.href='http://localhost:8080/hydrangea/HistoryServlet'" id="button2">履歴</button>
        <button onclick="location.href='http://localhost:8080/hydrangea/MemoServlet'" id="button2">メモ</button>
</body>
<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
</html>