<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>幹事サポート</title>
        <link rel="stylesheet" href="/simpleBC/css/style.css">
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
    <main>
        <label>登録内容を確認してください</label><br>
        <label>店舗情報入力　[登録情報確認]　登録完了</label><br>

        <form>
            <input type="image" name="shop_name" value="登録内容"><br>


            <iframe class="frame_center" src="RegisterServlt" width="400" height="400"></iframe>



            <label>
                <button type="submit" name="registerscreen_b" value="入力に戻る" placeholder="">入力に戻る</button>
            </label>
            <label>
                <button type="submit" name="register_b" value="登録" placeholder="">登録</button>
            </label>
        </form>

    </main>

    </html>