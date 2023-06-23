<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>TOP|hydrangea</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/header_footer.css"><!-- 検索ウィンドウ用css -->
    <link rel="stylesheet" href="css/search_result.css"><!-- 検索ウィンドウ用css -->
	<link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->
    <!-- <link rel="stylesheet" href="css/calendar.css">カレンダーcss -->
    <link rel="stylesheet" href="css/top.css"><!-- 専用css -->

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
<div class="menu_contents" style="background-image:url(img/izakaya.jpg)";>
<h1>ロゴ</h1>

<!-- 上半分 -->
<div class="top">

<!-- ランキング -->
    <div class="ranking">
        <div class="con">
        <p>ランキング</p>
        <table>
        <tr><th>第１位</th><td><a href="/hydrangea/ShopDetailServlet">居屋酒々井</a></td></tr>
        <tr><th>第２位</th><td><a href="/hydrangea/ShopDetailServlet">アードフッド</a></td></tr>
        <tr><th>第３位</th><td><a href="/hydrangea/ShopDetailServlet">パンロマガジン</a></td></tr>
        <tr><th>第４位</th><td><a href="/hydrangea/ShopDetailServlet">Knight&amp;Witch</a></td></tr>
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

    <!-- カレンダー -->
    <div class="calendar">
        <div class="con">
        <p><a href="/hydrangea/CalendarServlet">カレンダー</a></p>
        </div>
    </div>

</div>
<!-- 下半分 -->
<div class="bottom">

<!-- お知らせ -->
    <div class="information">
        <div class="con">
        <p>お知らせ</p>
        <table>
        <tr><th>2023/6/18</th><td><a href="">7月の飲み会開催決定のお知らせ</a></td></tr>
        <tr><th>2023/6/14</th><td><a href="">7月の飲み会参加申し込み期限間近です！</a></td></tr>
        <tr><th>2023/6/8</th><td><a href="">7月飲み会申し込み開始です！</a></td></tr>
        <tr><th>2023/5/25</th><td><a href="">飲み会参加ありがとうございました！</a></td></tr>
        </table>
        </div>
    </div>

    <!-- 検索機構 -->
    <div class="search">
    <div class="con">
     <form action="/hydrangea/SearchResultServlet" id="form" style="text-align: right;">
        <input type="text" placeholder="フリーワード検索" style="width: 50%; margin-right: 3px;">
        <button>検索</button>
     </form>
       <!--プチ検索窓-->
        <div class ="search_window_top">
            <form method="POST" action="/hydrangea/SearchResultServlet" autocomplete="off"> <!--servlet名、要チェック-->
            <table class="koumoku">
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
        <!--検索ウィンドウの表示-->
            <button class="open"><label  for="pop-up">詳細検索</label></button>
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
</div>
</div>
</div>

<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>

</body>
</html>