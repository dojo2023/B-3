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
        <label>店舗情報入力　[更新情報確認]　更新完了</label><br>
        <label>更新が失敗しました。メニュー画面下部より管理者に連絡下さい。</label><br>


        <form>
            <label>
                <button type="submit" name="menuscreen_b" value="メニューに戻る" placeholder="">メニューに戻る</button>
            </label>


            <label>
                <button type="submit" name="update_confir_b" value="更新確認に戻る" placeholder="">更新確認に戻る</button>
            </label>


        </form>
    </main>

    </html>