<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>幹事サポート</title>
    <link rel="stylesheet" href="/hydrangea/css/menu.css">

    <style>
        .sheet_list li {
            display: inline;
        }

        .holiday_list li {
            display: inline;
        }


        .open_page li {
            display: inline;
        }

        .current {
            color: #DB7093;
            text-decoration-line: underline;
            text-underline-offset: 2px;
            text-decoration-thickness: 10px;
        }
    </style>

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
<meta charset="UTF-8">
<title>fileupload</title>

<body>
   <h1><label>店舗情報登録</label></h1><br>
<h2>

<ol class="open_page">
                    <li >店舗情報入力</li>
                    <li >登録情報確認</li>
                    <li class="current">登録完了</li>
                </ol>
                </h2>

<h1>失敗しました。</h1>


<input type=submit href="/hydrangea/MenuServlet" >メニューに戻る


</body>
</html>