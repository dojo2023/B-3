<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>幹事サポート|hydrangea</title>
<link rel="stylesheet" href="css/header_footer.css"><!-- ヘッダーフッター用css -->
<link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->
<link rel="stylesheet" href="css/template.css"><!-- テンプレート用css -->
</head>
<body>
<header>
	<h1><a href="/hydrangea/MenuServlet"><img src="img/logo.png" alt="アプリロゴ" ></a></h1><!-- メニュー画面に戻る -->
    <p id="title">通知テンプレート</p>
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
        </div>
        <!--ここまでメニュー-->

</header>
<div class="contents">
<!-- 入力欄 -->
	<div id="tsuchitemplate">
	<table>
		<tr>
			<td>
			<a class=markar>*は必須項目です</a>
			</td>
		</tr>

        <tr>
            <td>
                <a class=markar>* </a><input type="text" id="template_title" required placeholder="タイトル">
            </td>
        </tr>

        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;<select  name="KAKUI" id="template_kakui" >
                    <option value="人事部">人事部</option>
                    <option value="経理部<">経理部</option>
                    <option value="総務部">総務部</option>
                    <option value="法務部">法務部</option>
                    <option value="情報システム部">情報システム部</option>
                    <option value="営業部">営業部</option>
                    <option value="技術部">技術部</option>
                    <option value="Others">その他</option>
                </select>
                <label>各位</label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;<textarea cols="30" rows="6" id="template_textarea" placeholder="メッセージ入力"></textarea><br>
            </td>
        </tr>

        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;<label class="koumoku">飲み会の詳細<br></label>
            </td>
        </tr>

        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;<input type="date" id="meeting_date">&nbsp;&nbsp;<input type="time" id="meeting_time">

            </td>
        </tr>

        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;<input type="text" id="template_venue" required placeholder="会場">
            </td>
        </tr>

        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;<input type="text" id="template_address" required placeholder="住所">
            </td>
        </tr>

        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;<input type="text" id="template_fee" required placeholder="会費"><br>
            </td>
        </tr>

        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;<textarea cols="30" rows="5" id="template_textarea2" placeholder="メッセージ入力"></textarea>
            </td>
        </tr>

        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;<button type="button" onclick="createNotemplate()">作成</button>
            </td>
        </tr>

	</table>
    </div>

<!-- 入力結果 -->
	<div id="result">
	<a class="koumoku">入力内容</a>

	<div class="koumoku" id="notemplate_content" style="display: none;">

        <p id="titleResult"></p>
        <p id="kakuiResult"></p>
		<p id="textareaResult"></p>

		<p id="informationResult"></p>

        <p><a id="meeting_dateResult"></a>&nbsp;<a id="meeting_timeResult"></a></p>
        <p id="venueResult"></p>
        <p id="addressResult"></p>
        <p id="feeResult"></p>
        <p id="textarea2Result"></p>

        <button type="button" onclick="clear_notemplate()">クリア</button>

    </div>
</div>
</div>
<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
<script src="/hydrangea/js/notification_template.js"></script>
</body>
</html>