<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <title>ホームページ</title>
    <meta charset="UTF-8">
    <style>
        .menu-btn {
        position: fixed;
        top: 10px;
        right: 10px;
        display: flex;
        height: 60px;
        width: 60px;
        justify-content: center;
        align-items: center;
        z-index: 90;
        background-color: #eeece9;
    }
    .menu-btn span,
    .menu-btn span:before,
    .menu-btn span:after {
        content: '';
        display: block;
        height: 3px;
        width: 25px;
        border-radius: 3px;
        background-color: black;
        position: absolute;
    }
    .menu-btn span:before {
        bottom: 8px;
    }
    .menu-btn span:after{
        top: 8px;
    }
    #menu-btn-check:checked ~ .menu-btn span {
        background-color: rgba(255, 255, 255, 0);/*メニューオープン時は真ん中の線を透明にする*/
    }
    #menu-btn-check:checked ~ .menu-btn span::before {
        bottom: 0;
        transform: rotate(45deg);
    }
    #menu-btn-check:checked ~ .menu-btn span::after {
        top: 0;
        transform: rotate(-45deg);
    }
    #menu-btn-check {
        display: none;
    }
    .menu-content {
        width: 25%;
        height: 100%;
        position: fixed;
        top: 0;
        right: 100%;/*leftの値を変更してメニューを画面外へ*/
        z-index: 80;
        background-color: #c0c0c0;
        transition: all 0.5s;/*アニメーション設定*/
    }
    .menu-content ul {
        padding: 70px 10px 0;
    }
    .menu-content ul li {
        border-bottom: solid 1px #000000;
        list-style: none;
    }
    .menu-content ul li a {
        display: block;
        width: 100%;
        font-size: 15px;
        box-sizing: border-box;
        color:#000000;
        text-decoration: none;
        padding: 9px 15px 10px 0;
        position: relative;
    }
    .menu-content ul li a::before {
        content: "";
        width: 7px;
        height: 7px;
        border-top: solid 2px #000000;
        border-right: solid 2px #000000;
        transform: rotate(45deg);
        position: absolute;
        right: 11px;
        top: 16px;
    }
    #menu-btn-check:checked ~ .menu-content {
        right: 0;/*メニューを画面内へ*/
    }
    .menu-content a:hover {
        /*color: #e3937a;*/
        font-weight:800;
    }
    .menu-content a:active {
        color: blue;
    }








    #calend {
        border: solid 2px;
        display: inline-block;
        width: 25%;
        height: 34%;
        text-align: center;
        vertical-align: middle;
        margin-left: 3%;
    }







.contents{
	display: flex;

}

/*検索ウィンドウまわりのcss*/
.search_window{
    text-align: right;
}
#pop-up {
	display: none; /* label でコントロールするので input は非表示に */
}
.overlay {
	display: none; /* input にチェックが入るまでは非表示に */
}
#pop-up:checked + .overlay {
	display: block;
	background-color: #00000044;
	position: fixed;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
}
.search_pop-up {
	width: 800px;
	height: 500px;
	background-color: #ffffff;
	border-radius: 6px;
	display: flex;
	justify-content: center;
	align-items: center;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}
.text {
	font-size: 18px;
	margin: 0;
}
.close {
	cursor:pointer;
	position: absolute;
	top: 4px;
	right: 4px;
	font-size: 20px;
}


    </style>
    </header>
<body>
<h1>ホームページ</h1>

<div style="text-align: center;">
<table border="1" style="float: left; width: 25%; height: 35%; text-align: center;">
<tr><th>第１位</th><td><a href="http://localhost:8080/hydrangea/ShopDetailServlet">居屋酒々井</a></td></tr>
<tr><th>第２位</th><td><a href="http://localhost:8080/hydrangea/ShopDetailServlet">アードフッド</a></td></tr>
<tr><th>第３位</th><td><a href="http://localhost:8080/hydrangea/ShopDetailServlet">パンロマガジン</a></td></tr>
<tr><th>第４位</th><td><a href="http://localhost:8080/hydrangea/ShopDetailServlet">Knight&Witch</a></td></tr>
</table>
</div>

<div style="margin-left: 30%; margin-right: 30%; vertical-align: middle; text-align: center;">
<table border="1" style="float: left; width: 100%; height: 35%;  text-align: center;">
<tr><th>2023/6/15</th><td><a href="">データ削除</a></td></tr>
<tr><th>2023/6/7</th><td><a href="">新規登録</a></td></tr>
<tr><th>2023/5/28</th><td><a href="">新規登録</a></td></tr>
<tr><th>2023/5/25</th><td><a href="">データ更新</a></td></tr>
</table>
</div>

<a href="http://localhost:8080/hydrangea/CalendarServlet" id="calend">カレンダー</a>


<br><br><br><br>
<form action="submit" class="retu" id="form" style="text-align: right;"><input type="text" placeholder="フリーワード検索" style="width: 40%; margin-right: 3px;"><button>検索</button>
</form>

<div style="text-align: center;">
    <table border="1" style="float: left; width: 40%; height: 25%; text-align: center; margin-right: 20%;">
    <tr><th>2023/6/18</th><td><a href="">7月の飲み会開催決定のお知らせ</a></td></tr>
    <tr><th>2023/6/14</th><td><a href="">7月の飲み会参加申し込み期限間近です！</a></td></tr>
    <tr><th>2023/6/8</th><td><a href="">7月飲み会申し込み開始です！</a></td></tr>
    <tr><th>2023/5/25</th><td><a href="">飲み会参加ありがとうございました！</a></td></tr>
    </table>
    </div>

 <!--プチ検索窓-->
<div class ="search_window">
<form method="POST" action="/simpleBC/SearchServlet" autocomplete="off"> <!--servlet名、要チェック-->
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
         <td>
         <input type="submit" name="REGIST" value="検索">
         </td>
</table>
</form>
<!--検索ウィンドウの表示-->
<button class="open"><label  for="pop-up">詳細検索</label></button>
<input type="checkbox" id="pop-up">
    <div class="overlay">
        <div class="search_pop-up">
        <label class="close" for="pop-up">×</label>
        <p class="detail_search"><!--ポップアップの中身-->
            <form method="POST" action="/simpleBC/SearchServlet" autocomplete="off"> <!--servlet名、要チェック-->
                <table class="koumoku">
                    <tr>
                        <td><label>ジャンル・店名・フリーワード<br>
                        <input type="text" name="NUMBER" value="${e.shop_name}">
                        </label></td>
                        <td><label>プリセット<br>
                        <select name="NUMBER" value="${e.shop_name}">
                        <option value="reservation">営業部</option>
                        <option value="event">営業1課</option>
                        <option value="contact">営業1課4班</option>
                        </label></td>
                    </tr>
                    <tr>
                        <td><label>価格帯<br>
                        <input type="text" name="price_max" value="${e.price_max}">～<input type="text" name="price_min" value="${e.price_min}">
                        </label></td>
                        <td><label>座席
                        <select name="sheet" value="${e.shop_name}">
                        <option value="reservation">飲み放題のみ</option>
                        <option value="event">食べ放題のみ</option>
                        <option value="contact">両方用意あり</option>
                        </label></td>
                    <tr>
                    <td><label>人数<br>
                        <input type="text" name="capacity" value="${e.capacity}">
                        </label></td>

                        <td><label>たばこ
                        <select name="sheet" value="${e.shop_name}">
                        <option value="reservation">喫煙</option>
                        <option value="event">禁煙</option>
                        </label></td>
                    </tr>
                    <tr>
                        <td><label>会社からの距離<br>
                        <input type="text" name="distance" value="${e.distance}">
                        </label></td>
                        <td><label>放題メニュー
                        <select name="sheet" value="${e.shop_name}">
                        <option value="reservation">飲み放題のみ</option>
                        <option value="event">食べ放題のみ</option>
                         <option value="contact">両方用意あり</option>
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
                        <td>
                         input type="submit" name="REGIST" value="検索">
                        </td>
                </table>
                </form>
           </p>
        </div>
    </div>
</div>

</body>
<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
</html>