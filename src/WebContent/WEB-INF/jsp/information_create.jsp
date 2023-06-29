<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>管理者お知らせ作成</title>
        <style>
            #modalBody {
            white-space: pre-wrap;
            }
        </style>
        <link rel="stylesheet" href="css/header_footer.css"><!-- ヘッダーフッター用css -->
        <link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->

    </head>
    <body>
        <!--ヘッダー-->
            <header>
            <h1><a href="/hydrangea/AdminmenuServlet"><img src="img/logo.png" alt="アプリロゴ" ></a></h1><!-- メニュー画面に戻る -->
            <div class="hamburger-menu"> <!--ハンバーガーメニュー-->
            <input type="checkbox" id="menu-btn-check">
            <label for="menu-btn-check" class="menu-btn"><span></span></label>
            <!--ここからメニュー-->
            <div class="menu-content">
                  <ul>
                <li>
                    <a href="/hydrangea/AdminmenuServlet">トップ</a>
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
        <!--ヘッダーここまで-->
        <!--メイン-->
        <main>

            <!-- <div class="admin_information">
                <input type="text" name="information_title" required="required" placeholder="タイトル">
                <input type="file" name="information_photo"> <br>
                <input type="text" name="information_subtitle" placeholder="サブタイトル"><br>
                <input type="text" name="information" required="required" placeholder="本文">
                <input type="submit" name="regist">
            </div> -->

            <div id="inputForm">
                <h2>入力フォーム</h2>
                <!-- <label for="name"></label> -->
                <!-- <input type="text" id="name" required> -->
                <input type="text" id="information_title" required placeholder="タイトル">
                <input type="file" id="information_photo"> <br>
                <input type="text" id="information_subtitle" placeholder="サブタイトル"><br>
                <input type="text" id="information" required placeholder="本文">

                <!-- <label for="email">メールアドレス:</label> -->
                <!-- <input type="email" id="email" required> -->
                <br>
                <button type="button" onclick="displayInfo()">確認</button>

            </div>
            <div id="result" style="display: none;">
                <h2>入力結果:</h2>

                <p id="titleResult"></p>
                <p id="photoResult"></p>
                <p id="subtitleResult"></p>
                <p id="informationResult"></p>

                <button type="button" onclick="editInfo()">訂正</button>
                <button type="button" onclick="submitForm()">投稿</button>
            </div>
            <!-- ローディング表示 -->
            <div id="loading" class="loading" style="display: none;">
            <img src="file:///C:/dojo6/src/WebContent/img/1-1-loading.gif" alt="ローディング">
            <p>投稿中...</p>
            </div>

            <!-- 送信完了画面 -->
            <div id="thank-you" style="display: none;">
                <!-- サーブレットで、ここは表示を変更するイメージ -->
            <h2>投稿が完了しました。</h2>
            <a href="/hydrangea/AdminmenuServlet">メニューへ戻る</a>
            </div>

        </main>
        <!--メインここまで-->
        <!--フッター-->
        <footer>
            <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>

        </footer>
        <!--フッターここまで-->
        <script src="/hydrangea/js/infomation_create.js"></script>
    </body>
</html>