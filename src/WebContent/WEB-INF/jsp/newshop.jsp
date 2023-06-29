<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>新規登録確認画面</title>
        <style>

        </style>
       <link rel="stylesheet" href="css/header_footer.css"><!-- ヘッダーフッター用css -->
       <link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->
		<link rel="stylesheet" href="css/shopdetail.css">
    </head>
    <body>
        <!--ヘッダー-->
        <header>
          <h1><a href="/hydrangea/AdminmenuServlet"><img src="img/logo.png" alt="アプリロゴ" ></a></h1><!-- メニュー画面に戻る -->
          <div class="hamburger-menu"> <!--ハンバーガーメニュー-->
            <input type="checkbox" id="menu-btn-check">
            <label for="menu-btn-check" class="menu-btn"><span></span></label>
            <!--ここからメニュー-->
            <div class="menu-content">
                  <ul>
                <li>
                    <a href="/hydrangea/AdminmenuServlet">トップ</a>
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
            <!-- <button  onclick="redirectToServlet()" >修正</button>-->
            <button  onclick="location.href = '/hydrangea/AdminUpdateServlet'" >修正(更新)</button>
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


            </div>
			<br><a href="/hydrangea/NoticeServlet">通知欄へ戻る</a>
			<br><a href="/hydrangea/AdminmenuServlet">メニューへ戻る</a>

			<div class="contents">

    <!--  <p><a href="/hydrangea/SearchResultServlet">前のページに戻る</a></p> <!--検索結果画面に戻る
   <c:if test = "${empty detaList}">
        データが読み込めませんでした<br>
     </c:if> -->
    <c:forEach var="e" items="${cardList}"> <!--list名、要チェック-->
    <!-- <label><a href="/hydrangea/ReserveServlet"><button>開催する</button></a></label> -->
        <form method="POST" action="/hydrangea/ShopDetailServlet">
		<div class="syousai">
            <p><label class="shop_name">居酒屋のんべえ</label>
            <label class="genre">和食／ 居酒屋</label></p>
			<p class="homepage"></p>

            <p class="shop_photo"><img src="/hydrangea/upload/43834c3258b53da686388537dd0e6fe8_t.jpeg"></p>

			<p class="score"><label class="text">評価：</label><label id=score>10点</label>/10 点</p>
			<p><label class="text">営業時間：&nbsp;&nbsp;</label>
			<label class="hour_hei">(平日)16：30
			～23：00</label>

			&nbsp;&nbsp;<label class="hour_kyu">(休日)15：00～23：00</label></p>


					<div class="kyugyo">
					<label class="text">休業日：月曜日</label>
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
            <p class="address"><label class="text">住所：東京都渋谷区青山1-2-3</label><c:out value="${e.address}"/></p>
            <p class="distance"><label class="text">会社からの距離：250</label><c:out value="${e.distance}"/>ｍ</p>
            <p class="capacity"><label class="text">人数規模：20</label><c:out value="${e.capacity}"/>人</p>
            <p><label class="price_min"><label class="text">予算：￥2000</label><c:out value="${e.price_min}"/></label>～
            <label class="price_max"><label class="text">￥7000</label><c:out value="${e.price_max}"/></label></p>

            <p><label class="text">たばこ：喫煙可能</label><c:out value="${e.tabaco}"/></p>

				<div class="zaseki">
					<label class="text">座席：テーブル、座敷</label><div id="sheet_table"><c:out value="${e.sheet_table}"/></div>
					<div id="sheet_tatami"><c:out value="${e.sheet_tatami}"/></div>
					<div id="sheet_other"><c:out value="${e.sheet_other}"/></div>
                </div>

			<p><label class="text">放題メニュー：飲み放題あり</label><c:out value="${e.eat_drink}"/></p>

            <p class="homepage"><label class="text">ホームページ：https://nonbee</label><c:out value="${e.homepage}"/></p>
			<p class="tel"><label class="text">電話番号：12312341234</label><c:out value="${e.tel}"/></p>
			<p class="other"><label class="text">その他連絡先：</label><c:out value="${e.other}"/></p>
			<p class="remarks_shop"><label class="text">備考：予約は電話のみ</label><c:out value="${e.remarks_shop}"/></p>


         </div>
		</form>
     </c:forEach>
     <!--<label><a href="/hydrangea/ReserveServlet"><button>開催する</button></a></label>-->
</div>
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