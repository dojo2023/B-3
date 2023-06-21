<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>新規登録確認画面</title>
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
            <p>「居酒屋のんべえ」</p>
            <p>登録者 橘 葵</p>
           <!-- 画面右側にデータベースの内容を店情報の詳細みたくもってきて表示させたい-->
            <!-- 削除ボタン -->
            <button id="check-button" onclick="showConfirmation()" >確認</button>
            <!-- 修正ページに飛ぶボタン -->
            <!-- そもそも店の情報を通知ごとにもってきてそのまま修正にとぶのって可能なのか-->
            <button  onclick="redirectToServlet()" >修正</button>
            <!-- 登録確認画面 -->
            <div id="confirmation" style="display: none;">
            <h2>登録の確認</h2>
            <p>登録情報に誤りはないですか？</p>
            <button onclick="registItem()">OK</button>
            <button onclick="hideConfirmation()">キャンセル</button>
            </div>

            <!-- 確認完了画面 -->
            <div id="newshop_complete" style="display: none;">
                <!-- サーブレットで、ここは表示を変更するイメージ -->
                <!-- でもここは確認だけだから確認しましただけでもいいのかもしれない -->
            <h2>確認完了しました。</h2>
            <a href="">通知欄へ戻る</a>

            </div>


        </main>
        <!--メインここまで-->
        <!--フッター-->
        <footer>
            <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
        </footer>
        <!--フッターここまで-->
        <script src="/hydrangea/js/newshop.js"></script>
    </body>
</html>