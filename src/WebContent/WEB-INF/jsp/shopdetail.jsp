<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>店詳細 | Hydrangea</title>
<link rel="stylesheet" href="css/searchwindow.css"><!-- 検索ウィンドウ用css -->
<link rel="stylesheet" href="css/header_footer.css"><!-- ヘッダーフッター用css -->
<link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->
<link rel="stylesheet" href="css/shopdetail.css">
<!-- 専用css -->


</head>
<body>
<!--ここからヘッダー-->
<header class = header>
        <h1><a href="/hydrangea/MenuServlet"><img src="img/logo.png" alt="アプリロゴ" ></a></h1><!-- メニュー画面に戻る -->
        <p id="title">検索</p>
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
<!--ここから内容-->
<div class="contents">
<div class="page_left">
        <!--プチ検索窓-->
       <div class ="search_window">
           <form method="POST" action="/hydrangea/SearchResultServlet" autocomplete="off"> <!--servlet名、要チェック-->
           <table class="koumoku">
               <tr>
                <td><label>店名・フリーワード<br>
                <input type="text" name="shop_name" value="">
                </label></td>
               </tr>
               <tr>
                <td><label>価格帯<br>
                <input type="text" name="price_max" value="" size="3">～
                <input type="text" name="price_min" value="" size="3">
                </label></td>
               </tr>
               <tr>
                <td><label>人数<br>
                <input type="text" name="capacity" value="">
                </label></td>
               </tr>
               <tr>
                <td><label>会社からの距離<br>
                <input type="text" name="distance" value="">
                </label></td>
               </tr>
               <tr>
                <td>
                <input type="submit" name="search" value="検索">
                </td>
                </tr>
           </table>
           </form>
           <!--検索ウィンドウの表示-->
           <div><button class="open"><label  for="pop-up">詳細検索</label></button>
           <input type="checkbox" id="pop-up">
               <div class="overlay">
                 <div class="search_pop-up">
                   <label class="close" for="pop-up">×&nbsp;</label>
                   <div class="detail_search"><!--ポップアップの中身-->
                       <form method="POST" action="/hydrangea/SearchResultServlet" autocomplete="off"> <!--servlet名、要チェック-->
                           <table class="koumoku">
                               <tr>
                                <td><label>店名・フリーワード<br>
                                <input type="text" name="shop_name" value="${e.shop_name}">
                                </label></td>
                                <td><label>プリセット<br>
                                <select name="" value="${e.preset}">
                                   <option >選択して下さい</option>
                                   <option value="reservation">営業部</option>
                                   <option value="event">営業1課</option>
                                   <option value="contact">営業1課4班</option>
                                </select>
                                   </label></td>
                			<tr>
              				 <td>
                             <label>ジャンル<br>
                                <select type="text" name="genre" id="genre" value="" placeholder="ジャンル" required>
                                    <option >選択して下さい</option>
                                    <option value="和食">和食</option>
                                    <option value="中華">中華</option>
                                    <option value="フレンチ・イタリアン">フレンチ・イタリアン</option>
                                    <option value="洋食">洋食</option>
                                    <option value="その他">その他</option>
                                </select>
                            </label>
                        	</td>

                            <td>
                            <label>形態<br>
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
                            </label><br>
                            </td>
                            </tr>
                            <tr>
                               </tr>
                               <tr>
                                <td><label>価格帯<br>
                                <input type="text" name="price_max" value="${e.price_max}" size="4">～<input type="text" name="price_min" value="${e.price_min}" size="4">
                                </label></td>
                                <td><label>座席

                                   <input type="checkbox" name="sheet_table">テーブル席</option>
                                   <input type="checkbox" name="sheet_tatami">座敷</option>
                                   <input type="text" name="sheet_other">その他</option>

                                </label></td>
                               <tr>
                                <td><label>人数<br>
                                <input type="text" name="capacity" value="">
                                </label></td>

                                <td><label>たばこ
                                <input type="radio" name="tabaco" value="喫煙" checked>喫煙
                            	<input type="radio" name="tabaco" value="禁煙">禁煙<br>
                                </label></td>
                               </tr>

                               <tr>
                                <td><label>会社からの距離<br>
                                <input type="text" name="distance" value="" size="8">
                                </label></td>

                                <td><label>放題メニュー
                                <select name="sheet" value="e.shop_name">
                                   <option value="reservation">飲み放題のみ</option>
                                   <option value="event">食べ放題のみ</option>
                                   <option value="contact">両方用意あり</option>
                                </select>
                                </label></td>
                               </tr>
                               <tr>
                                <td><label>
                                <input type="text" name="genre_form" value="営業時間" size="8">～<input type="text" name="genre_form" value="営業時間" size="8">
                                </label></td>
                               </tr>
                               <tr>
                                <td class="preset"><label>
                                <input type="checkbox" name="keep_preset" value="keep">現在の条件を保存する<br>
                                プリセット名<input type="text" name="preset_name" value="記入してください">
                                </label></td>
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

       <!--役職メモ見る-->
       <div>
       <a href="/hydrangea/PositionmemoServlet" target="_blank"><button id="position_memo">役職メモを見る</button></a>
       </div>
</div>
<div class="page_right">
    <!--  <p><a href="/hydrangea/SearchResultServlet">前のページに戻る</a></p> <!--検索結果画面に戻る
   <c:if test = "${empty detaList}">
        データが読み込めませんでした<br>
     </c:if> -->
    <c:forEach var="e" items="${cardList}"> <!--list名、要チェック-->
    <!-- <label><a href="/hydrangea/ReserveServlet"><button>開催する</button></a></label> -->
        <form method="POST" action="/hydrangea/ShopDetailServlet">
		<div class="syousai">
            <p><label class="shop_name"><c:out value="${e.shop_name}"/></label>
            <label class="genre"><c:out value="${e.genre}"/> ／ <c:out value="${e.genre_form}"/></label></p>
			<p class="homepage"><c:out value="${e.homepage}"/></p>

            <p class="shop_photo"><img src="/hydrangea/upload/${e.filename}"></p>

			<p class="score"><label class="text">評価：</label><label id=score><c:out value="${e.score}"/></label>/10 点</p>
			<p><label class="text">営業時間：&nbsp;&nbsp;</label><label class="hour_hei">(平日)<c:out value="${e.open_hei}"/>～<c:out value="${e.close_hei}"/></label>

			&nbsp;&nbsp;<label class="hour_kyu">(休日)<c:out value="${e.open_kyu}"/>～<c:out value="${e.close_kyu}"/></label></p>


					<div class="kyugyo">
					<label class="text">休業日：</label>
						  <div id="holiday_mon"><c:out value="${e.holiday_mon}"/></div>
                    	  <div id="holiday_tue"><c:out value="${e.holiday_tue}"/></div>
                    	  <div id="holiday_wed"><c:out value="${e.holiday_wed}"/></div>
                    	  <div id="holiday_thu"><c:out value="${e.holiday_thu}"/></div>
                   	      <div id="holiday_fri"><c:out value="${e.holiday_fri}"/></div>
                   	      <div id="holiday_sat"><c:out value="${e.holiday_sat}"/></div>
                   	      <div id="holiday_sun"><c:out value="${e.holiday_sun}"/></div>
                   	      <div id="holiday_syuku"><c:out value="${e.holiday_syuku}"/></div>
                   	      <div id="holiday_nenmatsu"><c:out value="${e.holiday_nenmatsu}"/></div>
                    	  <div id="holiday_other"><c:out value="${e.holiday_other}"/></div>
					</div>
            <p class="address"><label class="text">住所：</label><c:out value="${e.address}"/></p>
            <p class="distance"><label class="text">会社からの距離：</label><c:out value="${e.distance}"/>ｍ</p>
            <p class="capacity"><label class="text">人数規模：</label><c:out value="${e.capacity}"/>人</p>
            <p><label class="price_min"><label class="text">予算：￥</label><c:out value="${e.price_min}"/></label>～
            <label class="price_max"><label class="text">￥</label><c:out value="${e.price_max}"/></label></p>

            <p><label class="text">たばこ：</label><c:out value="${e.tabaco}"/></p>

				<div class="zaseki">
					<label class="text">座席：</label><div id="sheet_table"><c:out value="${e.sheet_table}"/></div>
					<div id="sheet_tatami"><c:out value="${e.sheet_tatami}"/></div>
					<div id="sheet_other"><c:out value="${e.sheet_other}"/></div>
                </div>

			<p><label class="text">放題メニュー：</label><c:out value="${e.eat_drink}"/></p>

            <p class="homepage"><label class="text">ホームページ：</label><c:out value="${e.homepage}"/></p>
			<p class="tel"><label class="text">電話番号：</label><c:out value="${e.tel}"/></p>
			<p class="other"><label class="text">その他連絡先：</label><c:out value="${e.other}"/></p>
			<p class="remarks_shop"><label class="text">備考：</label><c:out value="${e.remarks_shop}"/></p>

                    <input type="submit" name="SUBMIT" value="更新">
                    <input type="submit" name="SUBMIT" value="削除申請">
         </div>
		</form>
     </c:forEach>
     <!--<label><a href="/hydrangea/ReserveServlet"><button>開催する</button></a></label>-->
</div>
</div>
<!--ここからフッター-->
<footer class="footer">

    <!--著作権-->
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>

</footer>

<script src="/hydrangea/js/shopdetail.js"></script>

</body>
</html>
