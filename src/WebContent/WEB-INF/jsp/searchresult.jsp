<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>検索結果 | Hydrangea</title>
<link rel="stylesheet" href="css/searchwindow.css">
<!-- 検索ウィンドウ用css -->
<link rel="stylesheet" href="css/header_footer.css">
<!-- ヘッダーフッター用css -->
<link rel="stylesheet" href="css/menu.css">
<!-- ハンバーガーメニュー用css -->
</head>
<body>
	<!--ここからヘッダー-->
	<header class=header>
		<h1>
			<a href="/hydrangea/MenuServlet"><img src="img/logo.png"
				alt="アプリロゴ"></a>
		</h1>
		 <p id="title">検索</p>
		<!-- メニュー画面に戻る -->
		<div class="hamburger-menu">
			<!--ハンバーガーメニュー-->
			<input type="checkbox" id="menu-btn-check"> <label
				for="menu-btn-check" class="menu-btn"><span></span></label>
			<!--ここからメニュー-->
			<div class="menu-content">
				<ul>
					<li><a href="/hydrangea/MenuServlet">トップ</a></li>
					<li><a href="/hydrangea/RegistServlet">登録</a></li>
					<li><a href="/hydrangea/HistoryServlet">履歴</a></li>
					<li><a href="/hydrangea/PositionmemoServlet">役職メモ</a></li>
					<li><a href="/hydrangea/MemoServlet">メモ</a></li>
					<li><a href="/hydrangea/CalenderServlet">カレンダー</a></li>
					<li><a href="/hydrangea/NotificationServlet">通知文テンプレート</a></li>
					<li><a href="/hydrangea/ExpensesServlet">経費申請書テンプレート</a></li>
					<li><a href="/hydrangea/LogoutServlet">ログアウト</a></li>
				</ul>
			</div>
			<!--ここまでメニュー-->
		</div>
	</header>
	<!--ここから内容-->
	<div class="contents">
		<div class="page_left">
			<!--プチ検索窓-->
			<div class="search_window">
				<form method="POST" action="/hydrangea/SearchResultServlet"
					autocomplete="off">
					<!--servlet名、要チェック-->
					<table class="koumoku">
						<tr>
							<td><label>店名・フリーワード<br> <input type="text"
									name="NUMBER" value="">
							</label></td>
						</tr>
						<tr>
							<td><label>価格帯<br> <input type="text"
									name="price_max" value="" size="3">～ <input type="text"
									name="price_min" value="" size="3">
							</label></td>
						</tr>
						<tr>
							<td><label>人数<br> <input type="text"
									name="capacity" value="">
							</label></td>
						</tr>
						<tr>
							<td><label>会社からの距離<br> <input type="text"
									name="distance" value="">
							</label></td>
						</tr>
						<tr>
							<td><input type="submit" name="REGIST" value="検索"></td>
						</tr>
					</table>
				</form>
				<!--検索ウィンドウの表示-->
				<div>
				<div class="open">
					<button>
						<label for="pop-up">詳細</label>
					</button>
					</div>
					<input type="checkbox" id="pop-up">
					<div class="overlay">
						<div class="search_pop-up">
							<label class="close" for="pop-up">×</label>
							<div class="detail_search">
								<!--ポップアップの中身-->
								<form method="POST" action="/hydrangea/SearchResultServlet"
									autocomplete="off">
									<!--servlet名、要チェック-->
									<table class="koumoku">
										<tr>
											<td><label>店名・フリーワード<br> <input type="text"
													name="shop_name" value="${e.shop_name}">
											</label></td>
											<td><label>プリセット<br> <select name=""
													value="${e.preset}">
														<option>選択して下さい</option>
														<option value="reservation">営業部</option>
														<option value="event">営業1課</option>
														<option value="contact">営業1課4班</option>
												</select>
											</label></td>
										<tr>
											<td><label>ジャンル<br> <select type="text"
													name="genre" id="genre" value="" placeholder="ジャンル"
													required>
														<option>選択して下さい</option>
														<option value="和食">和食</option>
														<option value="中華">中華</option>
														<option value="フレンチ・イタリアン">フレンチ・イタリアン</option>
														<option value="洋食">洋食</option>
														<option value="その他">その他</option>
												</select>
											</label></td>

											<td><label>形態<br> <select type="text"
													name="genre_form" id="genre_form" value="" placeholder="形態"
													required>
														<option>選択して下さい</option>
														<option value="居酒屋">居酒屋</option>
														<option value="レストラン">レストラン</option>
														<option value="寿司屋">寿司屋</option>
														<option value="焼肉">焼肉</option>
														<option value="バイキング">バイキング</option>
														<option value="カフェ">カフェ</option>
														<option value="バー">バー</option>
														<option value="その他">その他</option>
												</select>
											</label><br></td>
										</tr>
										<tr>
										</tr>
										<tr>
											<td><label>価格帯<br> <input type="text"
													name="price_max" value="${e.price_max}" size="4">～<input
													type="text" name="price_min" value="${e.price_min}"
													size="4">
											</label></td>
											<td><label>座席 <input type="checkbox"
													value="sheet_table">テーブル席
													</option> <input type="checkbox" value="sheet_tatami">座敷
													</option> <input type="checkbox" value="sheet_other">その他
													</option>

											</label></td>
										<tr>
											<td><label>人数<br> <input type="text"
													name="capacity" value="">
											</label></td>

											<td><label>たばこ <input type="radio" name="tabaco"
													value="喫煙" checked>喫煙 <input type="radio"
													name="tabaco" value="禁煙">禁煙<br>
											</label></td>
										</tr>

										<tr>
											<td><label>会社からの距離<br> <input type="text"
													name="distance" value="" size="8">
											</label></td>

											<td><label>放題メニュー <select name="sheet"
													value="e.shop_name">
														<option value="reservation">飲み放題のみ</option>
														<option value="event">食べ放題のみ</option>
														<option value="contact">両方用意あり</option>
												</select>
											</label></td>
										</tr>
										<tr>
											<td><label> <input type="text" name="genre_form"
													value="営業時間" size="8">～<input type="text"
													name="genre_form" value="営業時間" size="8">
											</label></td>
										</tr>
										<tr>
											<td class="preset"><label> <input
													type="checkbox" name="keep_preset" value="keep">現在の条件を保存する<br>
													プリセット名<input type="text" name="preset_name"
													value="記入してください">
											</label></td>
										</tr>
										<tr>
											<td><input type="submit" name="search" value="詳細検索">
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
		<div class="page_right">
			<!--デフォルト部分-->
			<p>
				<a href="/hydrangea/MenuServlet">前のページに戻る</a>
			</p>
			<!--メニュー画面に戻る-->
			<div>
				<p>oo件</p>
				<!--shop DBのカウントアップで表示-->
				<select id="sort" name="sort">
					<option value="reservation">更新日順</option>
					<option value="event">価格の安い順</option>
					<option value="contact">価格の高い順</option>
					<option value="event">会社から近い順</option>
					<option value="contact">会社から遠い順</option>
					<option value="event">評価の高い順</option>
					<option value="contact">評価の低い順</option>
				</select>
			</div>
			<!--結果の表示-->
			<div class="search_result">

				<c:if test="${empty cardList}">
					<!--list名、要チェック-->
					<p>お探しの店は見つかりませんでした</p>
				</c:if>
				<!--データ一個分-->
				<c:forEach var="e" items="${cardList}">
					<!--list名、要チェック-->
					<form method="GET" action="/hydrangea/ShopDetailServlet">
						<table class="koumoku">
							<tr class="shop_photo">
								<td><label> <c:out value="${e.filename}" /> <!--写真のインプットタイプってなんだ-->
								</label></td>
							</tr>
							<tr>
								<td><h3><label>

											<c:out value="${e.shop_name}" />
											<!--店名-->

								</label></h3></td>
								<td><label> <c:out value="${e.shop_name}" /> <c:out
											value="${e.genre}" /> <!--ジャンル-->
								</label></td>
								<td><label> <c:out value="${e.shop_name}" /> <c:out
											value="${e.genre_form}" /> <!--形態-->
								</label></td>
							</tr>
							<tr>
								<td><c:out value="${e.price_max}" /> <!--価格帯（大）--> ～</td>
								<td><c:out value="${e.price_min}" /> <!--価格帯（小）--></td>
								<td><label> <c:out value="${e.distance}" /> <!--会社からの距離-->
								</label></td>
								<td><label> <c:out value="${e.address}" /> <!--住所-->
								</label></td>
							</tr>
						</table>
						<input type="submit" name="more_detail" value="もっと見る">
					</form>
				</c:forEach>
			</div>
		</div>
	</div>


	<!--ここからフッター-->
	<footer class="footer">
		<!--管理者へのメッセージ-->
		<!--<form class="contact">
        <p>お問い合わせ</p>
        <input type="textbox" value="問い合わせ内容を記入してください" name="otoiawase">
        <input type="button" value="送信" name="send">
    </form>-->
		<!--著作権-->
		<p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>


	</footer>

</body>
</html>
