<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>検索結果 | Hydrangea</title>
<link rel="stylesheet" href="css/search_result.css">
<link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->
</head>
<body>
<!--ここからヘッダー-->
<header class = header>
        <h1 class="logo"><a href="menu.html"><img src="img/logo.png" alt="アプリロゴ" width="100"></a></h1>
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
                    <a href="/hydrangea/LoginServlet">ログアウト</a>
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
             <input type="text" name="shop_name" value="">
             </label></td>
            </tr>
            <tr>
             <td><label>価格帯<br>
             <input type="text" name="price_max" value="">～
             <input type="text" name="price_min" value="">
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
<button class="open"> <label  for="pop-up">詳細検索</label></button>
        <input type="checkbox" id="pop-up">
            <div class="overlay">
              <div class="search_pop-up">
                <label class="close" for="pop-up">×</label>
                <p class="detail_search"><!--ポップアップの中身-->
                    <form method="POST" action="/hydrangea/SearchResultServlet" autocomplete="off"> <!--servlet名、要チェック-->
                        <table class="koumoku">
                            <tr>
                             <td><label>ジャンル・店名・フリーワード<br>
                             <input type="text" name="NUMBER" value="${e.shop_name}">
                             </label></td>
                             <td><label>プリセット<br>
                             <select name="NUMBER" id="プリセット">
                                <option value="reservation">営業部</option>
                                <option value="event">営業1課</option>
                                <option value="contact">営業1課4班</option>
                             </select>
                                </label></td>
                            </tr>
                            <tr>
                             <td><label>価格帯<br>
                             <input type="text" name="price_max" value="${e.price_max}">～<input type="text" name="price_min" value="${e.price_min}">
                             </label></td>
                             <td><label>座席
                             <select name="sheet" id="sheet">
                                <option value="reservation">飲み放題のみ</option>
                                <option value="event">食べ放題のみ</option>
                                <option value="contact">両方用意あり</option>
                            </select>
                             </label></td>
                            <tr>
                             <td><label>人数<br>
                             <input type="text" name="capacity" value="${e.capacity}">
                             </label></td>

                             <td><label>たばこ
                             <select name="tabaco" id="tabaco">
                                <option value="reservation">喫煙</option>
                                <option value="event">禁煙</option>
                            </select>
                             </label></td>
                            </tr>
                            <tr>
                             <td><label>会社からの距離<br>
                             <input type="text" name="distance" value="${e.distance}">
                             </label></td>
                             <td><label>放題メニュー
                             <select name="hodai" id="hodai" >
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
                             <input type="submit" name="REGIST" value="検索">
                             </td>
                             </tr>
                        </table>
                        </form>

              </div>
            </div>
	</div>
	</div>
<div class="page_right">
    <!--デフォルト部分-->
    <p><a href="/hydrangea/MenuServlet">前のページに戻る</a></p> <!--メニュー画面に戻る-->
    <div><p>検索結果</p> <p>oo件</p><!--shop DBのカウントアップで表示-->
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
    <div class ="search_result">
        <c:if test = "${empty cardList}"> <!--list名、要チェック-->
                    <p>お探しの店は見つかりませんでした</p></c:if>
                <!--データ一個分-->
        <c:forEach var="e" items="${cardList}"> <!--list名、要チェック-->
            <form method="GET" action="/hydrangea/ShopDetailServlet">
            <table class="koumoku">
                <tr class="shop_photo">
                    <td><label>
                        <c:out value="${e.photo}" /><!--写真のインプットタイプってなんだ-->
                    </label></td>
                </tr>
                <tr>
                    <td><label><h3>
                        <c:out value="${e.shop_name}" /><!--店名-->
                     </h3></label></td>
                    <td><label>
                        <c:out value="${e.shop_name}" /><c:out value="${e.genre}"/><!--ジャンル-->
                     </label></td>
                    <td><label>
                        <c:out value="${e.shop_name}" /><c:out value="${e.genre_form}"/><!--形態-->
                     </label></td>
                </tr>
                <tr>
                    <td>
                        <c:out value="${e.price_max}" /><!--価格帯（大）--> ～
                    </td><td>
                        <c:out value="${e.price_min}" /><!--価格帯（小）-->
                    </td>
                    <td><label>
                        <c:out value="${e.distance}" /><!--会社からの距離-->
                     </label></td>
                    <td><label>
                        <c:out value="${e.address}" /><!--住所-->
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
