<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>幹事サポート</title>
<link rel="stylesheet" href="menu/common.css">
</head>
<header>
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

<body>
	<form method="POST" action="/hydrangea/NotificationServlet">
    <div id="result" style="display: none;">
        <h2>入力結果:</h2>

        <p id="titleResult"></p>
        <p id="kakuiResult"></p><p>各位</p>
        <p>お疲れ様です。</p>
        <p id="textareaResult"></p>
        <p>飲み会の詳細</p>
        <p id="meeting_timeResult"></p>
        <p id="venueResult"></p>
        <p id="addressResult"></p>
        <p id="feeResult"></p>
        <p id="textarea2Result"></p>

        <button type="button" onclick="correctInfo()">訂正</button>
        <a hirf="/hydrangea/NotificationServlet"><button type="button" onclick="backForm()">戻る</button></a>
    </div>


<div id="tuutitemplate">
<h1>通知テンプレート</h1>
<hr>
<table>


        <tr>
            <td>
                <input type="text" id="template_title" required placeholder="タイトル">
            </td>
        </tr>
        <tr>
            <td>
                <select type="text" name="KAKUI" id="template_kakui" placeholder="各位">
                    <option value="Humanresources">人事部</option>
                    <option value="Accounting">経理部</option>
                    <option value="Generalaffairs">総務部</option>
                    <option value="Legal">法務部</option>
                    <option value="Informationsystem">情報システム部</option>
                    <option value="Sales">営業部</option>
                    <option value="Engineering">技術部</option>
                </select>
                <label>各位</label>
            </td>
        </tr>
        <tr>
            <td>
                <label>お疲れ様です。<br></label>
            </td>
        </tr>
        <tr>
            <td>
                <input type="textarea" cols="100" rows="10" id="template_textarea" placeholder="テキスト入力"><br>
            </td>
        </tr>
        <tr>
            <td>
                <label>飲み会の詳細<br></label>
            </td>
        </tr>
        <tr>
            <td>
                <input type="datetime-local" id="meeting_time"
                        name="meeting-time" value="2023-06-16T19:30"
                        min="2023-06-01T00:00" max="2100-06-14T00:00"><br>
            </td>
        </tr>
        <tr>
            <td>
                <input type="text" id="template_venue" required placeholder="会場">
            </td>
        </tr>
        <tr>
            <td>
                <input type="text" id="template_address" required placeholder="住所">
            </td>
        </tr>
        <tr>
            <td>
                <input type="text" id="template_fee" required placeholder="会費"><br>
            </td>
        </tr>
        <tr>
            <td>
                <input type="textarea2" cols="100" rows="10" id="template_textarea2" placeholder="テキスト入力"><br>
            </td>
        </tr>
        <tr>
            <td>
                <button type="button" onclick="templateInfo()">作成</button>
            </td>
        </tr>

    </div>

</table>
<script src="script.js"></script>
</body>
<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
</html>