<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>店詳細 | Hydrangea</title>
<link rel="stylesheet" href="css/searchwindow.css"><!-- 検索ウィンドウ用css -->
<link rel="stylesheet" href="css/header_footer.css"><!-- ヘッダーフッター用css -->
<link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->


</head>
<body>
<!--ここからヘッダー-->
<header class = header>
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
                <td><label>ジャンル・店名・フリーワード<br>
                <input type="text" name="NUMBER" value="">
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
                <input type="submit" name="REGIST" value="検索">
                </td>
                </tr>
           </table>
           </form>
           <!--検索ウィンドウの表示-->
           <div><button class="open"><label  for="pop-up">詳細検索</label></button>
           <input type="checkbox" id="pop-up">
               <div class="overlay">
                 <div class="search_pop-up">
                   <label class="close" for="pop-up">×</label>
                   <div class="detail_search"><!--ポップアップの中身-->
                       <form method="POST" action="/hydrangea/SearchResultServlet" autocomplete="off"> <!--servlet名、要チェック-->
                           <table class="koumoku">
                               <tr>
                                <td><label>ジャンル・店名・フリーワード<br>
                                <input type="text" name="shop_name" value="${e.shop_name}">
                                </label></td>
                                <td><label>プリセット<br>
                                <select name="" value="${e.preset}">
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
                    	   </tr>
                    	   <tr>
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
                                <input type="text" name="price_max" value="${e.price_max}">～<input type="text" name="price_min" value="${e.price_min}">
                                </label></td>
                                <td><label>座席
                                <select name="sheet" value="${e.sheet}">
                                   <option value="reservation">飲み放題のみ</option>
                                   <option value="event">食べ放題のみ</option>
                                   <option value="contact">両方用意あり</option>
                                </select>
                                </label></td>
                               <tr>
                                <td><label>人数<br>
                                <input type="text" name="capacity" value="e.capacity">
                                </label></td>

                                <td><label>たばこ
                                <select name="sheet" value="e.shop_name">
                                   <option value="reservation">喫煙</option>
                                   <option value="event">禁煙</option>
                                </select>
                                </label></td>
                               </tr>
                               <tr>
                                <td><label>会社からの距離<br>
                                <input type="text" name="distance" value="distance">
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
                                <input type="text" name="genre_form" value="営業時間(平日)">～<input type="text" name="genre_form" value="営業時間(平日)">
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
                                <input type="submit" name="search" value="検索">
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
       <a href="/hydrangea/PositionmemoServlet" target="_blank"><button>役職メモを見る</button></a>
       </div>
</div>
<div class="page_right">
    <p><a href="/hydrangea/SearchResultServlet">前のページに戻る</a></p> <!--検索結果画面に戻る-->
    <!-- <c:if test = "${empty detaList}">
        データが読み込めませんでした<br>
     </c:if> -->
    <!-- <c:forEach var="e" items="${detaList}"> --> <!--list名、要チェック-->
    <label><a href="/hydrangea/ReserveServlet"><button>開催する</button></a></label>
        <form method="POST" action="/hydrangea/ShopDetailServlet">
		<table class="syousai">
            <tr>
                <td>
                  <h2>店名<!--<c:out value="${e.shop_name}"/>--></h2>
                </td>
            </tr>
            <tr>
                 <td>
                    <!--<c:out value="${e.homepage}"/>-->ホームページ
                 </td>
            </tr>
            <tr>
                <td>
                    <!--<c:out value="${e.photo}"/>-->写真
                </td>
            </tr>
            <tr>
                <td>
                    <!--<c:out value="${e.genre}"/>-->ジャンル ／
                </td>
                <td>
                    <!--<c:out value="${e.genre_form}"/>-->形態
                </td>
            </tr>
            <tr>
                <td>
                    <!--<c:out value="${e.score}"/>-->評価
                </td>
            </tr>
            <tr>
                <td>
                    <!--<c:out value="${e.open_hei}"/>-->平日オープン ～
                </td>
                <td>
                    <!--<c:out value="${e.close_hei}"/>-->平日クローズ
                </td>
            </tr>
            <tr>
                <td>
                    <!--<c:out value="${e.open_kyu}"/>-->休日オープン ～
                </td>
                <td>
                    <!--<c:out value="${e.close_kyu}"/>-->休日クローズ
                </td>
            </tr>
            <tr>
                <td>
                    <!--<c:out value="${e.holiday_mon}"/>-->休業日(月)
                </td>
                <td>
                    <!--<c:out value="${e.holiday_tue}"/>-->休業日(火)
                </td>
                <td>
                    <!--<c:out value="${e.holiday_wed}"/>-->休業日(水)
                </td>
                <td>
                    <!--<c:out value="${e.holiday_thu}"/>-->休業日(木)
                </td>
                <td>
                    <!--<c:out value="${e.holiday_fri}"/>-->休業日(金)
                </td>
                <td>
                    <!--<c:out value="${e.holiday_sat}"/>-->休業日(土)
                </td>
                <td>
                    <!--<c:out value="${e.holiday_sun}"/>-->休業日(日)
                </td>
                <td>
                    <!--<c:out value="${e.holiday_syuku}"/>-->休業日(祝日)
                </td>
                <td>
                    <!--<c:out value="${e.holiday_nenmatsu}"/>-->休業日(年末年始)
                </td>
                <td>
                    <!--<c:out value="${e.holiday_other}"/>-->休業日(その他)
                </td>
            </tr>
            <tr>
                <td>
                    <!--<c:out value="${e.address}"/>-->住所
                </td>
            </tr>
            <tr>
                <td>
                    <!--<c:out value="${e.distance}"/>-->会社からの距離
                </td>
            </tr>
            <tr>
                <td>
                    <!--<c:out value="${e.capacity}"/>-->人数規模
                </td>
            </tr>
            <tr>
                <td>
                    <!--<c:out value="${e.price_max}"/>-->価格帯（大） ～
                </td><td>
                    <!--<c:out value="${e.price_min}"/>-->価格帯（小）
                </td>
            </tr>
            <tr>
                <td>
                    <!--<c:out value="${e.tabaco}"/>-->喫煙の可否 ／
                </td>
                <td>
                   <!-- <c:out value="${e.sheet_table}"/>-->座席　テーブル
                </td>
                <td>
                    <!--<c:out value="${e.sheet_tatami}"/>-->座席　座敷
                </td>
                <td>
                    <!--<c:out value="${e.sheet_other}"/>-->座席　その他
                </td>
            </tr>
            <tr>
                <td>
                    <!--<c:out value="${e.eat_drink}"/>-->放題メニュー
                </td>
            </tr>
            <tr>
                <td>
                    <!--<c:out value="${e.homepage}"/>-->ホームページリンク
                </td>
            </tr>
            <tr>
                <td>
                    <!--<c:out value="${e.tel}"/>-->電話番号
                </td>
            </tr>
            <tr>
                <td><label>
                   <!-- <c:out value="${e.other}"/>-->その他連絡先
                </label></td>
            </tr>
            <tr>
                <td>
                    <!--<c:out value="${e.remarks_shop}"/>-->備考
                </td>
            </tr>
            </table>
                    <input type="submit" name="SUBMIT" value="更新">
                    <input type="submit" name="SUBMIT" value="削除申請">
		</form>
     <!--</c:forEach>-->
     <label><a href="/hydrangea/ReserveServlet"><button>開催する</button></a></label>
</div>
</div>
<!--ここからフッター-->
<footer class="footer">
    <!--管理者へのメッセージ-->
    <form class="contact">
        <p>お問い合わせ</p>
        <input type="text" value="問い合わせ内容を記入してください" name="otoiawase">
        <input type="button" value="送信" name="send">
    </form>
    <!--著作権-->
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>


</footer>

</body>
</html>
