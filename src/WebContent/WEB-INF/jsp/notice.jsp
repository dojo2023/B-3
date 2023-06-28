<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>管理者通知画面用jsp</title>
        <link rel="stylesheet" href="css/header_footer.css"><!-- ヘッダーフッター用css -->
        <link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->
        <style>
            /* 通知欄ごと囲む */
            .newshop{
                width: 200px;
                border: solid 2px;
                border-radius: 10px;
                padding: 20px;
                margin-bottom: 50px;
                margin: 20px;
            }
            .shop_update{
                width: 200px;
                border: solid 2px;
                border-radius: 10px;
                padding: 20px;
                margin-bottom: 50px;
                margin: 20px;
            }
            .delete_request{
                width: 200px;
                border: solid 2px;
                border-radius: 10px;
                padding: 20px;
                margin-bottom: 50px;
                margin: 20px;
            }
            .contact{
                width: 200px;
                border: solid 2px;
                border-radius: 10px;
                padding: 20px;
                margin-bottom: 50px;
                margin: 20px;
            }
        /* 通知欄全体をならべる */
        /* きれいに並べられてないから修正必要 */
            .notice{
                display: flex;
                margin-top: 100px;
                margin-left: 50px;
            }
    .logo{
        width: 100px;
        height: auto;
        display: block;
        margin: auto;
    }
        </style>
        <!-- <link rel="stylesheet" href="css/style.css"> -->

    </head>
    <body>
        <!--ヘッダー-->
        <header>
        <h1><a href="/hydrangea/MenuServlet"><img src="img/logo.png" alt="アプリロゴ" ></a></h1><!-- メニュー画面に戻る -->
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
        </div>     </header>
        <!--ヘッダーここまで-->
        <!--メイン-->
        <main>
            <!-- ロゴ画像表示されない・・・・・・！！

        <a href="/hydrangea/HomeServlet"><img class="logo" src="../flower_ajisai5_blue_720.png" alt="飲み会幹事アプリ" ></a>
-->
        <h3>管理者通知</h3>
            <div class="notice">
            <div class="newshop">
                <h4>新規店</h4>
                <hr>
                <p>
                 ・
                 <a href="/hydrangea/NewShopServlet?id_shops=1">2023/6/6<br>「居酒屋のんべえ」</a>
                </p>
                <p>
                ・
                <a href="">2023/6/3<br>「のみたろう」</a>
                </p>
                <p>
                ・
                <a href="">2023/5/29<br>「とりまる」</a>
                </p>
                <p>
                ・
                <a href="">2023/4/30<br>「肉どり」</a>
                </p>
            </div>
            <div class="shop_update">
                <h4>店情報更新</h4>
                <hr>
                <p>
                 ・
                 <a href="/hydrangea/NewShopServlet?id_shops=1">2023/6/6<br>「居酒屋のんべえ」</a>
                </p>
                <p>
                ・
                <a href="">2023/6/3<br>「のみたろう」</a>
                </p>
                <p>
                ・
                <a href="">2023/5/29<br>「とりまる」</a>
                </p>
                <p>
                ・
                <a href="">2023/4/30<br>「肉どり」</a>
                </p>
            </div>
            <div class="delete_request">
                <h4>削除依頼</h4>
                <hr>
                <p>
                 ・
                 <a href="/hydrangea/NewShopServlet?id_shops=1">2023/6/6<br>「居酒屋のんべえ」</a>
                </p>
                <p>
                ・
                <a href="">2023/6/3<br>「のみたろう」</a>
                </p>
                <p>
                ・
                <a href="">2023/5/29<br>「とりまる」</a>
                </p>
                <p>
                ・
                <a href="">2023/4/30<br>「肉どり」</a>
                </p>
            </div>
            <div class="contact">
                <h4>お問い合わせ</h4>
                <hr>
                <p>
                 ・
                 <a href="/hydrangea/NewShopServlet?id_shops=1">2023/6/6<br>「削除依頼確認のお願い」</a>
                </p>
                <p>
                ・
                <a href="">2023/6/3<br>「削除依頼確認のお願い」</a>
                </p>
                <p>
                ・
                <a href="">2023/5/29<br>「削除依頼確認のお願い」</a>
                </p>
                <p>
                ・
                <a href="">2023/4/30<br>「削除依頼確認のお願い」</a>
                </p>
            </div>
            </div>


        </main>
        <!--メインここまで-->

    </body>
    <footer>
        <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
    </footer>
</html>