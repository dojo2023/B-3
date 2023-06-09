<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>店舗情報更新画面</title>
		<link rel="stylesheet" href="css/header_footer.css"><!-- ヘッダーフッター用css -->
		<link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->

    </head>
    <body>
        <!--ヘッダー-->
        <header>
        	<h1><a href="/hydrangea/MenuServlet"><img src="img/logo.png" alt="アプリロゴ" ></a></h1><!-- メニュー画面に戻る -->
            <p id="title">店舗情報更新</p>
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
            <!-- 下のところもEL式で文字変えたい -->
            <p>2023/06/19</p>
            <p>「肉の宮」</p>
            <p>更新者 橘 葵</p>
            <p>更新箇所 「営業時間」</p>

           <!-- 画面右側にデータベースの内容を店情報の詳細みたくもってきて表示させたい-->
            <!-- 削除ボタン -->
<button id="check-button" onclick="showConfirmation()" >確認</button>

<!-- 登録確認画面 -->
<div id="confirmation" style="display: none;">
  <h2>更新内容の確認</h2>
  <p>更新情報に誤りはないですか？</p>
  <button onclick="registItem()">OK</button>
  <button onclick="hideConfirmation()">キャンセル</button>
</div>

<!-- 確認完了画面 -->
<div id="newshop_complete" style="display: none;">
    <!-- サーブレットで、ここは表示を変更するイメージ -->
    <!-- でもここは確認だけだから確認しましただけでもいいのかもしれない -->
<h2>確認完了しました。</h2>
<a href="/hydrangea/NoticeServlet">通知欄へ戻る</a>

</div>


        </main>
        <!--メインここまで-->
        <!--フッター-->
        <footer>
            <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
        </footer>
        <!--フッターここまで-->
        <script src="/hydrangea/js/shop_update.js"></script>
    </body>
</html>
