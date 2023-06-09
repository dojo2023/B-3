<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>登録|hydrangea</title>
    <link rel="stylesheet" href="css/regist.css"><!-- 登録用css -->
    <link rel="stylesheet" href="css/header_footer.css"><!-- ヘッダーフッター用css -->
    <link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->

</head>
<body>
<header>
	<h1><a href="/hydrangea/MenuServlet"><img src="img/logo.png" alt="アプリロゴ" ></a></h1><!-- メニュー画面に戻る -->
    	<label id="title">
    				<ol class="open_page">
                        <li class="current">店舗情報入力</li>
                        <li>登録情報確認</li>
                        <li>登録完了</li>
                    </ol>
                    </label>

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
<main>


<!--  -->

        <form action="/hydrangea/RegistServlet" method="post" enctype="multipart/form-data">
            <div id="registForm">

                <table class="">
					<tr>
						<td>
						<a class=markar>*は必須項目です</a>
						</td>
					</tr>
                    <tr>
                        <td>
                            <label><a class=markar>* </a>店名
                                <input type="text" name="shop_name" id="shop_name" value="" ><br>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>ジャンル
                                <select type="text" name="genre" id="genre" value="" placeholder="ジャンル" required>
                                    <option hidden>選択して下さい</option>
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
                            <label>形態
                                <select  name="genre_form" id="genre_form" value="" placeholder="形態" required>
                                    <option hidden >選択して下さい</option>
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
                                <input type="number" name="price_min" id="price_min" value="0" placeholder="下限">～
                            </label>
                            <label>
                                <input type="number" name="price_max" id="price_max" value="0" placeholder="上限">円<br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>平日営業時間
                                <input type="time" name="open_hei" id="open_hei" value="" placeholder="">～
                            </label>
                            <label>
                                <input type="time" name="close_hei" id="close_hei" value="" placeholder=""><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>休日営業時間
                                <input type="time" name="open_kyu" id="open_kyu" value="" placeholder="">～
                            </label>
                            <label>
                                <input type="time" name="close_kyu" id="close_kyu" value="" placeholder=""><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>休業日</label>

                            <label for="holiday_mon">:</label>
                            <label><input type="checkbox" name="holiday_mon" id="holiday_mon">月</label>

                            <label for="holiday_tue">:</label>
                            <label><input type="checkbox" name="holiday_tue" id="holiday_tue">火</label>

                            <label for="holiday_wed">:</label>
                            <label><input type="checkbox" name="holiday_wed" id="holiday_wed">水</label>

                            <label for="holiday_thu">:</label>
                            <label><input type="checkbox" name="holiday_thu" id="holiday_thu">木</label>

                            <label for="holiday_fri">:</label>
                            <label><input type="checkbox" name="holiday_fri" id="holiday_fri">金</label>

                            <label for="holiday_sat">:</label>
                            <label><input type="checkbox" name="holiday_sat" id="holiday_sat">土</label>

                            <label for="holiday_sun">:</label>
                            <label><input type="checkbox" name="holiday_sun" id="holiday_sun">日</label>

                            <label for="holiday_syuku">:</label>
                            <label><input type="checkbox" name="holiday_syuku" id="holiday_syuku">祝日</label>

                            <label for="holiday_nenmatsu">:</label>
                            <label><input type="checkbox" name="holiday_nenmatsu" id="holiday_nenmatsu">年末年始</label>

                            <label for="holiday_other">:</label>
                            <label>その他</label>
                            <input type="text" name="holiday_other_text" id="holiday_other_text"><br>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>会社からの距離
                                <input type="number" name="distance" id="distance" value="0" placeholder="">M<br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>住所
                                <input type="text" name="address" id="address" value="" name="" value=""
                                    placeholder=""><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>

                            <label>喫煙:</label>
                            <input type="radio" name="tabaco" value="喫煙" checked>喫煙
                            <input type="radio" name="tabaco" value="禁煙">禁煙<br>

                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>座席様式</label>
                            <label><input type="checkbox" name="sheet_table" id="sheet_table">テーブル</label>
                            <label><input type="checkbox" name="sheet_tatami" id="sheet_tatami">座敷</label>
                            <label>その他</label>
                            <input type="text" name="sheet_other_text" id="sheet_other_text"><br>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>規模
                                <input type="number" name="capacity" id="capacity" value="0" placeholder="">人<br>
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
                                <select name="score" id="score" >
                                    <option value=0>選択して下さい</option>
                                    <option  value="10">10:殿堂入り</option>
                                    <option value="9">9:名店</option>
                                    <option value="8">8:優良</option>
                                    <option  value="7">7:おすすめ</option>
                                    <option value="6">6:それなり</option>
                                    <option  value="5">5:普通</option>
                                    <option  value="4">4:いまいち</option>
                                    <option  value="3">3:おすすめしない</option>
                                    <option  value="2">2:まずい</option>
                                    <option  value="1">1:地雷</option>
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
                            <label><a class=markar>* </a>画像
                                <input type="file" name="filename" id="photo"  multiple="multiple"
                                    onchange="previewImage(this);"
                                    accept="image/*">
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
                                id="register_confir_b">登録確認</button><br>

                        </td>
                    </tr>

                </table>
            </div>


            <div id="register_confir" style="display: none;">
                <h2>
                    <ol class="open_page">
                        <li >店舗情報入力</li>
                        <li class="current">登録情報確認</li>
                        <li>登録完了</li>
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
               <!--  <button type="button" onclick="register()">登録</button>-->
               <input type="submit" name="regist" value="登録"></input>
            </div>

        </form>
        <form>
            <div id="success" style="display: none;">
                <h2>
                <ol class="open_page">
                    <li >店舗情報入力</li>
                    <li >登録情報確認</li>
                    <li class="current">登録完了</li>
                </ol>
                </h2>
                <p>登録が完了しました。</p>

                 <button onclick="location.http://localhost:8080/hydrangea/MenuServlet" ">メニューに戻る</button>

            </div>

        </form>

    </main>
    <footer>
        <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
    </footer>

    <script src="/hydrangea/js/RegistScript.js"></script>
</body>


</html>