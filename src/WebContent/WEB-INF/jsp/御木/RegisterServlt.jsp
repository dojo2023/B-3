<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>幹事サポート</title>
        <link rel="stylesheet" href="/simpleBC/css/style.css">

        <style>
            .open_page li {
                display: inline;
            }
        </style>
    </head>

    <body>
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
            <h1><label>店舗情報登録</label><br></h1>
            <h2>
                <ol class="open_page">
                    <li class="current">店舗情報入力</li>
                    <li>登録情報確認</li>
                    <li>登録完了</li>
                </ol>
            </h2>
            <form  accept="" method="">
                <table class="">


                    <tr>
                        <td>
                            <label>店名(必須)
                                <input type="text" name="shop_name" value="" required><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>ジャンル（必須）
                                <select type="text" name="genre" value="" placeholder="ジャンル" required>
                                    <option hidden>選択して下さい</option>
                                    <option value="japanese">和食</option>
                                    <option value="Chinese">中華</option>
                                    <option value="French/Italian">フレンチ・イタリアン</option>
                                    <option value="Western">洋食</option>
                                    <option value="Genre_form_other">その他</option>
                                </select>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>形態（必須）
                                <select type="text" name="genre_form" value="" placeholder="形態" required>
                                    <option hidden>選択して下さい</option>
                                    <option value="Izakaya">居酒屋</option>
                                    <option value="Restaurant">レストラン</option>
                                    <option value="Sushi_shop">寿司屋</option>
                                    <option value="Yakiniku">焼肉</option>
                                    <option value="Buffe">バイキング</option>
                                    <option value="Cafe">カフェ</option>
                                    <option value="Bar">バー</option>
                                    <option value="Othershop">その他</option>
                                </select>
                            </label><br>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>価格
                                <input type="text" name="price_min" value="" placeholder="下限">～
                            </label>
                            <label>
                                <input type="text" name="price_max" value="" placeholder="上限">円<br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>平日営業時間
                                <input type="time" name="open_hei" value="" placeholder="">～
                            </label>
                            <label>
                                <input type="time" name="close_hei" value="" placeholder=""><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>休日営業時間
                                <input type="time" name="open_kyu" value="" placeholder="">～
                            </label>
                            <label>
                                <input type="time" name="close_kyu" value="" placeholder=""><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>休業日</label>
                            <label><input type="checkbox" name="holiday_mon" value="" placeholder="">月</label>
                            <label><input type="checkbox" name="holiday_tue" value="" placeholder="">火</label>
                            <label><input type="checkbox" name="holiday_wed" value="" placeholder="">水</label>
                            <label> <input type="checkbox" name="holiday_thu" value="" placeholder="">木</label>
                            <label><input type="checkbox" name="holiday_fri" value="" placeholder="">金</label>
                            <label><input type="checkbox" name="holiday_sat" value="" placeholder="">土</label>
                            <label><input type="checkbox" name="holiday_sun" value="" placeholder="">日</label>
                            <label><input type="checkbox" name="holiday_syuku" value="" placeholder="">祝日</label>
                            <label><input type="checkbox" name="holiday_nenmatsu" value="" placeholder="">年末年始</label>
                            <label><input type="checkbox" name="holiday_other" value="" placeholder="">その他</label>
                            <input type="text"name="holiday_other_text" value="" placeholder=""><br>
    
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>会社からの距離
                                <input type="text" name="distance" value="" placeholder="">M<br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>住所
                                <input type="text" name="address" value="" name="" value="" placeholder=""><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>喫煙
                                <input type="radio" name="tabaco" value="" placeholder="">可
                                <input type="radio" name="tabaco" value="" placeholder="">不可<br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>座席様式
                                <input type="checkbox" name="sheet_table" value="" placeholder="">テーブル
                                <input type="checkbox" name="sheet_tatami" value="" placeholder="">座敷
                                <input type="checkbox" name="sheet_other" value="" placeholder="">その他<input type="text"
                                    name="sheet_other_text" value="" placeholder=""><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>規模
                                <input type="text" name="capacity" value="" placeholder="">人<br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>飲み放題・食べ放題
                                <input type="radio" name="eat_drink" value="" placeholder="">飲み放題のみ
                                <input type="radio" name="eat_drink" value="" placeholder="">食べ放題のみ
                                <input type="radio" name="eat_drink" value="" placeholder="">両方あり
                                <input type="radio" name="eat_drink" value="" placeholder="">両方なし<br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>評価
                                <select type="text" name="score" value="" placeholder="ジャンル">
                                    <option hidden>選択して下さい</option>
                                    <option name="score_10" value="">10:殿堂入り</option>
                                    <option name="score_9" value="">9:名店</option>
                                    <option name="score_8" value="">8:優良</option>
                                    <option name="score_7" value="">7:おすすめ</option>
                                    <option name="score_6" value="">6:それなり</option>
                                    <option name="score_5" value="">5:普通</option>
                                    <option name="score_4" value="">4:いまいち</option>
                                    <option name="score_3" value="">3:おすすめしない</option>
                                    <option name="score_2" value="">2:まずい</option>
                                    <option name="score_1" value="">1:地雷</option>
                                </select> /10点<br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>電話番号
                                <input type="text" name="tel" value="" placeholder=""><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>ホームページ
                                <input type="text" name="homepage" value="" placeholder=""><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>その他連絡先
                                <input type="text" name="other_tel" value="" placeholder=""><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>画像
                                <input type="file" name="photo" value="" multiple="multiple" alt=""
                                    accept="image/*" /><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>備考
                                <input type="textarea" name="remarks_shop" value="" placeholder=""><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>
                                <button type="submit" name="register_confir_b" value="" placeholder="">登録確認</button><br>
                            </label>
                        </td>
                    </tr>
                </table>
            </form>
        </main>
        <footer>
            <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
        </footer> 
    </body>

    </html>