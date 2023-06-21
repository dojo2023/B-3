<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>削除依頼確認画面</title>
        <style>
        </style>
        <!-- <link rel="stylesheet" href="css/style.css"> -->

    </head>
    <body>
        <!--ヘッダー-->
        <header>
            <div class="hamburger-menu">
                <input type="checkbox" id="menu-btn-check">
                <label for="menu-btn-check" class="menu-btn"><span></span></label>
                <!--ここからメニュー-->
                <div class="menu-content">
                    <ul>
                        <li>
                            <a href="">メニュー</a>
                        </li>
                        <li>
                            <a href="">登録</a>
                        </li>
                        <li>
                            <a href="">履歴</a>
                        </li>
                        <li>
                            <a href="">メモ</a>
                        </li>
                        <li>
                            <a href="">ページ作成編集</a>
                        </li>
                        <li>
                            <a href="">通知</a>
                        </li>
                        <li>
                            <a href="">ログアウト</a>
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