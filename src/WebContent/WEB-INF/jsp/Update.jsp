<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>幹事サポート</title>
    <link rel="stylesheet" href="css/header_footer.css"><!-- ヘッダーフッター用css -->
    <link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->

    <style>
        .sheet_list li {=Z
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

    <main>
        <h1><label>店舗情報更新</label></h1><br>





        <form action="/hydrangea/UpdateServlet" method="post" enctype="multipart/form-data">

            <div id="updateForm">
                <h2>
                    <ol class="open_page">
                        <li class="current">店舗情報入力</li>
                        <li>更新情報確認</li>
                        <li>更新完了</li>
                    </ol>
                </h2>
                <table class="">


                    <tr>
                        <td>
                            <label>店名(必須)
                                <input type="text" name="shop_name" id="shop_name" value="${e.shop_name}" required><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>ジャンル（必須）
                                <select type="text" name="genre" id="genre"  value="${e.gerne}" placeholder="ジャンル" required>
                                    <option >選択して下さい</option>
                                    <option value="和食">和食</option>
                                    <option value="中華">中華</option>
                                    <option value="フレンチ・イタリアン">フレンチ・イタリアン</option>
                                    <option value="洋食">洋食</option>
                                    <option value="その他">その他</option>
                                </select>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>形態（必須）
                                <select type="text" name="genre_form" id="genre_form" value="${e.genre_form}" placeholder="形態"
                                    required>
                                    <option hidden>選択して下さい</option>
                                    <option value="居酒屋">居酒屋</option>
                                    <option value="レストラン">レストラン</option>
                                    <option value="寿司屋">寿司屋</option>
                                    <option value="焼肉">焼肉</option>
                                    <option value="バイキング">バイキング</option>
                                    <option value="カフェ">カフェ</option>
                                    <option value="バー">バー</option>
                                    <option value="その他">その他</option>
                                </select>
                            </label><br>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>価格
                                <input type="number" name="price_min" id="price_min" value="${e.price_min}" placeholder="下限">～
                            </label>
                            <label>
                                <input type="number" name="price_max" id="price_max" value="${e.price_max}" placeholder="上限">円<br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>平日営業時間
                                <input type="time" name="open_hei" id="open_hei" value="${e.open_hei}" placeholder="">～
                            </label>
                            <label>
                                <input type="time" name="close_hei" id="close_hei" value="${e.close_hei}" placeholder=""><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>休日営業時間
                                <input type="time" name="open_kyu" id="open_kyu" value="${e.open_kyu}" placeholder="">～
                            </label>
                            <label>
                                <input type="time" name="close_kyu" id="close_kyu" value="${e.close_kyu}" placeholder=""><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>休業日</label>

                            <label for="holiday_mon">:</label>
                            <label><input type="checkbox" name="holiday_mon" id="holiday_mon" value="${e.holiday_mon}">月</label>

                            <label for="holiday_tue">:</label>
                            <label><input type="checkbox" name="holiday_tue" id="holiday_tue" value="${e.holiday_tue}">火</label>

                            <label for="holiday_wed">:</label>
                            <label><input type="checkbox" name="holiday_wed" id="holiday_wed"  value="${e.holiday_wed}">水</label>

                            <label for="holiday_thu">:</label>
                            <label><input type="checkbox" name="holiday_thu" id="holiday_thu" value="${e.holiday_thu}">木</label>

                            <label for="holiday_fri">:</label>
                            <label><input type="checkbox" name="holiday_fri" id="holiday_fri"  value="${e.holiday_fri}">金</label>

                            <label for="holiday_sat">:</label>
                            <label><input type="checkbox" name="holiday_sat" id="holiday_sat" value="${e.holiday_sat}">土</label>

                            <label for="holiday_sun">:</label>
                            <label><input type="checkbox" name="holiday_sun" id="holiday_sun" value="${e.holiday_sun}">日</label>

                            <label for="holiday_syuku">:</label>
                            <label><input type="checkbox" name="holiday_syuku" id="holiday_syuku" value="${e.holiday_syuku}">祝日</label>

                            <label for="holiday_nenmatsu">:</label>
                            <label><input type="checkbox" name="holiday_nenmatsu" id="holiday_nenmatsu" value="${e.holiday_nenmatsu}">年末年始</label>

                            <label for="holiday_other">:</label>
                            <label>その他</label>
                            <input type="text" name="holiday_other_text" id="holiday_other_text" value="${e.holiday_other}"><br>

                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>会社からの距離
                                <input type="number" name="distance" id="distance"  value="${e.distance}" placeholder="">M<br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>住所
                                <input type="text" name="address" id="address"  value="${e.address}" name="" value=""
                                    placeholder=""><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>

                            <label>喫煙:</label>
                            <input type="radio" name="tabaco" value="可">可
                            <input type="radio" name="tabaco" value="不可">不可<br>

                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>座席様式</label>
                            <label><input type="checkbox" name="sheet_table" id="sheet_table">テーブル</label>
                            <label><input type="checkbox" name="sheet_tatami" id="sheet_tatami">座敷</label>
                            <label>その他</label>
                            <label>
                            <input type="text" name="sheet_other_text" id="sheet_other_text"><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>規模
                                <input type="number" name="capacity" id="capacity" value="${e.capacity}" placeholder="">人<br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>飲み放題・食べ放題
                                <input type="radio" name="eat_drink" id="eat_ok_drink_no" value="飲み放題のみ">飲み放題のみ
                                <input type="radio" name="eat_drink" id="eat_ok_drink_no" value="食べ放題のみ" >食べ放題のみ
                                <input type="radio" name="eat_drink" id="eat_ok_drink_ok" value="両方あり">両方あり
                                <input type="radio" name="eat_drink" id="eat_no_drink_no" value="両方なし">両方なし<br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>評価
                                <select type="text" name="score" id="score" >
                                    <option hidden>選択して下さい</option>
                                    <option name="score_10" value="10:殿堂入り">10:殿堂入り</option>
                                    <option name="score_9" value="9:名店">9:名店</option>
                                    <option name="score_8" value="8:優良">8:優良</option>
                                    <option name="score_7" value="7:おすすめ">7:おすすめ</option>
                                    <option name="score_6" value="6:それなり">6:それなり</option>
                                    <option name="score_5" value="5:普通">5:普通</option>
                                    <option name="score_4" value="4:いまいち">4:いまいち</option>
                                    <option name="score_3" value="3:おすすめしない">3:おすすめしない</option>
                                    <option name="score_2" value="2:まずい">2:まずい</option>
                                    <option name="score_1" value="1:地雷">1:地雷</option>
                                </select> /10点<br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>電話番号
                                <input type="number" name="tel" id="tel" value="" placeholder=""><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>ホームページ
                                <input type="text" name="homepage" id="homepage" value="" placeholder=""><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>その他連絡先
                                <input type="text" name="other_tel" id="other_tel" value="" placeholder=""><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                             <label>画像
                                <input type="file" name="photo" id="photo"  multiple="multiple"
                                 onchange="previewImage(this);" accept="image/*">
                                    <img id="preview" src="" style = "max-width:150px;">

                            </label>

                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>備考
                                <input type="textarea" name="remarks_shop" id="remarks_shop" value=""
                                    placeholder=""><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>

                            <button type="button" onclick="displayConfirmation()" name="register_confir_b"
                                id="register_confir_b">更新確認</button><br>

                        </td>
                    </tr>

                </table>
            </div>


            <div id="update_confir" style="display: none;">
                <h2>
                    <ol class="open_page">
                        <li >店舗情報入力</li>
                        <li class="current">更新情報確認</li>
                        <li>更新完了</li>
                    </ol>
                </h2>
                <p id="shop_nameResult"></p>
                <p id="genreResult"></p>
                <p id="genre_formResult"></p>
                <p id="prieResult"></p>
                <p id="heiReselt"></p>
                <p id="kyuReselt"></p>

                <ol class="holiday_list">
                    <li id="holiday_monReselt"></li>
                    <li id="holiday_tueReselt"></li>
                    <li id="holiday_wedReselt"></li>
                    <li id="holiday_thuReselt"></li>
                    <li id="holiday_friReselt"></li>
                    <li id="holiday_satReselt"></li>
                    <li id="holiday_sunReselt"></li>
                    <li id="holiday_syukuReselt"></li>
                    <li id="holiday_nenmatsuReselt"></li>

                    <li id="holiday_other_textReselt"></li>
                </ol>

                <p id="distanceReselt"></p>
                <p id="addressReselt"></p>
                <p id="tabacoReselt"></p>

                <ol class="sheet_list">
                    <li id="sheet_tableReselt"></li>
                    <li id="sheet_tatamiReselt"></li>

                    <li id="sheet_other_textReselt"></li>
                </ol>

                <p id="capacityReselt"></p>
                <p id="eat_drinkReselt"></p>
                <p id="scoreResult"></p>
                <p id="telResult"></p>
                <p id="homepageResult"></p>
                <p id="other_telResult"></p>
                <p id="photoResult"></p>
                <p id="remarks_shopResult"></p>

                <button type="button" onclick="editInfo()">訂正</button>
               <!--  <button type="button" onclick="update()">更新</button> -->
                <input type="submit" name="update" value="更新"></input>

            </div>
</form>
<form>

            <div id="success" style="display: none;">
                <h2>
                <ol class="open_page">
                    <li >店舗情報入力</li>
                    <li >更新情報確認</li>
                    <li class="current">更新完了</li>
                </ol>
                </h2>
                <p>更新が完了しました。</p>
                <button type="button" onclick="">メニューへ戻る</button>

            </div>

        </form>

    </main>
    <footer>
        <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
    </footer>


    <script src="/hydrangea/js/UpdateScript.js"></script>
</body>


</html>