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

<h1>通知テンプレート</h1>
<hr>
<form method="POST" action="">
<table class="">

    <tr>
        <td>
            <label>件名&ensp;&ensp;&ensp;<input type="text" name="SUBJECT" value=""><br></label>
        </td>
    </tr>

    <tr>
        <td>
            <label>Cc/Bcc&ensp;<input type="text" name="BCC" value=""><br>
            </label>
        </td>
    </tr>

    <tr>
        <td>
            <label>宛名&ensp;&ensp;&ensp;
                <input type="text" name="DEAR" value=""><br>
            </label>
        </td>
    </tr>

    <tr>
        <td>
                <select type="text" name="KAKUI" value="" placeholder="各位">
                    <option value="Humanresources">人事部</option>
                    <option value="Accounting">経理部</option>
                    <option value="Generalaffairs">総務部</option>
                    <option value="Legal">法務部</option>
                    <option value="Informationsystem">情報システム部</option>
                    <option value="Sales">営業部</option>
                    <option value="Engineering">技術部</option>
                </select>
                <label>各位</label>
        </td>
    </tr>

    <tr>
        <td>
            <label>お疲れ様です。<br></label>
        </td>
    </tr>

    <tr>
        <td>
            <textarea cols="100" rows="10"></textarea>
        </td>
    </tr>



<td><p>飲み会の詳細</p></td>

    <tr>
        <td>
            <label>日時：
                <input type="datetime-local" id="meeting-time"
                name="meeting-time" value="2023-06-16T19:30"
                min="2023-06-01T00:00" max="2100-06-14T00:00"><br>
            </label>
        </td>
    </tr>

    <tr>
        <td>
            <label>会場：
                <input type="text" name="VENUE" value=""><br>
            </label>
        </td>
    </tr>

    <tr>
        <td>
            <label>住所：
                <input type="text" name="ADDRESS" value=""><br>
            </label>
        </td>
    </tr>

    <tr>
        <td>
            <label>会費：
                <input type="text" name="shop_name" value=""><br>
            </label>
        </td>
    </tr>

    <tr>
        <td>
            <textarea cols="100" rows="10"></textarea>
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