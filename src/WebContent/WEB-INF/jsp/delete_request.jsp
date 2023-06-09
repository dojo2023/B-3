<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>削除依頼確認画面</title>
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
            <p>2023/06/19</p>
            <p>「あらき」</p>
            <p>依頼者 橘 葵</p>
            <p>理由 「閉店していたため」</p>
            <!-- 削除ボタン -->
<button id="delete-button" onclick="showConfirmation()" >削除</button>

<!-- 削除確認画面 -->
<div id="confirmation" style="display: none;">
  <h2>削除の確認</h2>
  <p>本当に削除しますか？</p>
  <button onclick="deleteItem()">OK</button>
  <button onclick="hideConfirmation()">キャンセル</button>
</div>
<!-- データベースの内容を店情報の詳細みたくもってきて表示させればいい？ -->

        </main>
        <!--メインここまで-->
        <!--フッター-->
        <footer>
            <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
        </footer>
        <!--フッターここまで-->
        <script src="/hydrangea/js/delete_request.js"></script>
    </body>
</html>