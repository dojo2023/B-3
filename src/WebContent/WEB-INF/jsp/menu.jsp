<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>TOP|hydrangea</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/header_footer.css"><!-- ヘッダーフッター用css -->
	<link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->
    <link rel="stylesheet" href="css/mini_calendar.css"><!-- ミニカレンダーcss -->
    <link rel="stylesheet" href="css/searchwindow.css"><!-- 検索ウィンドウ用css -->
    <link rel="stylesheet" href="css/top.css"><!-- 専用css -->

</head>
<body style="background-image:url(img/izakaya.jpg); background-size: cover;">
 <header >
 	   <a href="/hydrangea/MenuServlet"><img src="img/logo.png" alt="アプリロゴ" ></a><!-- メニュー画面に戻る -->

     <!-- 検索機構 -->
    <div class="search">

    <div class ="search_window_top">

     <form method="POST" action="/hydrangea/SearchResultServlet" id="form" >

            <input type="text" placeholder="店名・フリーワード検索"name="shop_name" style="width: 60%; margin-right: 3px;">

            <input type="submit" name="search" value="検索"><br>

       <label id=yosan><input type="text" name="price_max" value="" size="4"  placeholder="最高予算">～&nbsp;<input type="text" name="price_min" value="" size="4" placeholder="最低予算"></label>

            <input type="text" name="capacity" value="" size="5" placeholder="人数">

            <input type="text" name="distance" value="" size="5" placeholder="距離" >

            </form>
        <!--検索ウィンドウの表示-->
            <button class="open" style="text-align:right; margin-top:18px;"><label  for="pop-up" >詳細検索</label></button>
               <input type="checkbox" id="pop-up">
               <div class="overlay">
                 <div class="search_pop-up">
                   <label class="close" for="pop-up">×&nbsp;</label>
                   <div class="detail_search"><!--ポップアップの中身-->
                       <form method="POST" action="/hydrangea/SearchResultServlet" autocomplete="off"> <!--servlet名、要チェック-->
                           <table class="koumoku">
                               <tr>
                                <td>店名・フリーワード<br>
                                <input type="text" name="shop_name" value="${e.shop_name}">
                                </td>
                                <td>プリセット<br>
                                <select name="" value="${e.preset}">
                                   <option >選択して下さい</option>
                                   <option value="reservation">営業部</option>
                                   <option value="event">営業1課</option>
                                   <option value="contact">営業1課4班</option>
                                </select>
                                   </td>
                			<tr>
              				 <td>
                             ジャンル<br>
                                <select type="text" name="genre" id="genre" value="" placeholder="ジャンル" required>
                                    <option >選択して下さい</option>
                                    <option value="和食">和食</option>
                                    <option value="中華">中華</option>
                                    <option value="フレンチ・イタリアン">フレンチ・イタリアン</option>
                                    <option value="洋食">洋食</option>
                                    <option value="その他">その他</option>
                                </select>

                        	</td>

                            <td>
                            形態<br>
                                <select type="text" name="genre_form" id="genre_form" value="" placeholder="形態"
                                    required>
                                    <option >選択して下さい</option>
                                    <option value="居酒屋">居酒屋</option>
                                    <option value="レストラン">レストラン</option>
                                    <option value="寿司屋">寿司屋</option>
                                    <option value="焼肉">焼肉</option>
                                    <option value="バイキング">バイキング</option>
                                    <option value="カフェ">カフェ</option>
                                    <option value="バー">バー</option>
                                    <option value="その他">その他</option>
                                </select>
                            <br>
                            </td>
                            </tr>
                            <tr>
                               </tr>
                               <tr>
                                <td>価格帯<br>
                                <input type="text" name="price_max" value="${e.price_max}" size="4">&nbsp;～&nbsp;<input type="text" name="price_min" value="${e.price_min}" size="4">
                                </td>
                                <td>座席

                              <input type="checkbox" name="sheet_table">テーブル席
                              <input type="checkbox" name="sheet_tatami">座敷
                              その他<input type="text" name="sheet_other">

                                </td>
                               <tr>
                                <td>数<br>
                                <input type="text" name="capacity" value="">
                                </td>

                                <td>たばこ
                                <input type="radio" name="tabaco" value="喫煙" checked>喫煙
                            	<input type="radio" name="tabaco" value="禁煙">禁煙<br>
                                </td>
                               </tr>

                               <tr>
                                <td>会社からの距離<br>
                                <input type="text" name="distance" value="" size="8">
                                </td>

                                <td>放題メニュー
                                <select name="sheet" value="e.shop_name">
                                   <option value="reservation">飲み放題のみ</option>
                                   <option value="event">食べ放題のみ</option>
                                   <option value="contact">両方用意あり</option>
                                </select>
                                </td>
                               </tr>
                               <tr>
                                <td>営業時間
                                <input type="time" name="open_hei" value="営業時間" size="8">&nbsp;～&nbsp;<input type="time" name="close_hei" value="営業時間" size="8">
                                </td>
                               </tr>

                               <tr>
                                <td class="preset">
                                <input type="checkbox" name="keep_preset" value="keep">現在の条件を保存する<br>
                                プリセット名<input type="text" name="preset_name" value="記入してください">
                               </td>
                               </tr>
                               <tr>
                                <td>
                                <input type="submit" name="search" value="詳細検索">
                                </td>
                               </tr>
                           </table>
                           </form>
                   </div>
                 </div>
               </div>
            </div>
        </div>
    </div>


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

<div class="menu_contents">

<!-- 上半分 -->
<div class="top">

<!-- ランキング -->
    <div class="ranking">
        <div class="con">
        <p>評価ランキング</p>
        <div class="rank_table">
        <table>
        <tr><th style="color:#e6b422;">第１位</th><th style="color:#b3b3b3;">第２位</th><th style="color: #b87333;">第３位</th><th style="color: #7e837f;">第４位</th><th style="color: #7e837f;">第５位</th><th style="color: #7e837f;">第６位</th></tr>
        <tr><td id=photo><img src="img/izakaya_syusui.jpg" alt="居酒屋酒々井" ></td>
        	<td id=photo><img src="img/izakaya-ardhud.jpg" alt="アードフッド" ></td>
        	<td id=photo><img src="img/izakaya-ajisai.jpg" alt="あじさい" ></td>
        	<td id=photo><img src="img/huruya.jpg" alt="古谷" ></td>
        	<td id=photo><img src="img/panromagajin.jpg" alt="パンロマガジン" ></td>
        	<td id=photo><img src="img/Knight&Witch.jpg" alt="Knight&amp;Witch" ></td>
        </tr>
        <tr><td><a href="/hydrangea/ShopDetailServlet" id="syusui">居酒屋酒々井</a></td>
        	<td><a href="/hydrangea/ShopDetailServlet">アードフッド</a></td>
        	<td><a href="/hydrangea/ShopDetailServlet">あじさい</a></td>
        	<td><a href="/hydrangea/ShopDetailServlet">古谷</a></td>
        	<td><a href="/hydrangea/ShopDetailServlet">パンロマガジン</a></td>
        	<td><a href="/hydrangea/ShopDetailServlet">Knight&amp;Witch</a></td></tr>
        </table>
        </div>
        </div>
    </div>

    <!-- カレンダー -->
	<div class="calendar">
		<div class="con">
        	<div id="calendar">
        	</div>
		</div>
	</div>

	</div>
<!-- 下半分 -->
<div class="bottom">

<!-- お知らせ -->
    <div class="information">
        <div class="con">
        <p>お知らせ</p>
        <table >
        <tr><th>2023/6/18</th><td><a href="">7月の飲み会開催決定のお知らせ</a></td></tr>
        <tr><th>2023/6/14</th><td><a href="">7月の飲み会参加申し込み期限間近です！</a></td></tr>
        <tr><th>2023/6/8</th><td><a href="">7月飲み会申し込み開始です！</a></td></tr>
        <tr><th>2023/5/25</th><td><a href="">飲み会参加ありがとうございました！</a></td></tr>
        </table>
        </div>
    </div>

	    <!-- コマンド -->
    <div class="command">
        <div class="con">
        <p>店登録状況</p>
        <table>
        <tr><th>2023/6/15</th><td><a href="">データ削除</a></td></tr>
        <tr><th>2023/6/7</th><td><a href="">新規登録</a></td></tr>
        <tr><th>2023/5/28</th><td><a href="">新規登録</a></td></tr>
        <tr><th>2023/5/25</th><td><a href="">データ更新</a></td></tr>
        </table>
        </div>
    </div>


</div>
</div>

<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
<script src="/hydrangea/js/calendar.js"></script>
</body>
</html>