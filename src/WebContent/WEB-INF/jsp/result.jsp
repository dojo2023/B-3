<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>fileupload</title>
    <link rel="stylesheet" href="css/header_footer.css"><!-- ヘッダーフッター用css -->
    <link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->

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
<body>
<header>
	<h1><a href="/hydrangea/MenuServlet"><img src="img/logo.png" alt="アプリロゴ" ></a></h1><!-- メニュー画面に戻る -->
    <p id="title">更新完了</p>
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
                    <a href="/hydrangea/CalendarServlet">カレンダー</a>
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



   <h1><label>店舗情報登録</label></h1><br>
<h2>

<ol class="open_page">
                    <li >店舗情報入力</li>
                    <li >登録情報確認</li>
                    <li class="current">登録完了</li>
                </ol>
                </h2>

<h1>完了しました</h1>


<a href="/hydrangea/MenuServlet">メニューへ戻る</a>

</body>
</html>