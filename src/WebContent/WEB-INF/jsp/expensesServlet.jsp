<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>幹事サポート|hydrangea</title>
<link rel="stylesheet" href="css/header_footer.css"><!-- ヘッダーフッター用css -->
<link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->
<link rel="stylesheet" href="css/\template.css"><!-- テンプレート用css -->
</head>
<body>
<header>
	<h1><a href="/hydrangea/MenuServlet"><img src="img/logo.png" alt="アプリロゴ" ></a></h1><!-- メニュー画面に戻る -->
    <p id="title">経費申請書テンプレート</p>
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
	<div id="expenseTemplate">
	<table>
		<tr>
			<td>
			<a class=markar>*は必須項目です</a>
			</td>
		</tr>

	    <tr>
	        <td>
	<a class="koumoku">&nbsp;&nbsp;&nbsp;開催日</a><input type="date" id="expenseTemplate_event" name="trip-start" >
	        </td>
	    </tr>

	    <tr>
	        <td>
	            <a class=markar>* </a><input type="text" id="expenseTemplate_content" required placeholder="内容">
	        </td>
	    </tr>

	    <tr>
	        <td>
	            &nbsp;&nbsp;&nbsp;<input type="text" id="expenseTemplate_pay" required placeholder="支払先">
	        </td>
	    </tr>

	    <tr>
	        <td>
	            &nbsp;&nbsp;&nbsp;<input type="text" id="expenseTemplate_fee" required placeholder="金額">
	        </td>
	    </tr>

	    <tr>
	        <td>
	            &nbsp;&nbsp;&nbsp;<input type="text" id="expenseTemplate_remarks" required placeholder="備考">
	        </td>
	    </tr>

		<tr>
	        <td>
	        	&nbsp;&nbsp;&nbsp;<input type="file" name="photo" id="expenseTemplate_photo"  multiple="multiple" accept="image/*">

	        </td>
	    </tr>

		<tr>
	        <td>
	            &nbsp;<a class="koumoku"><label class=markar>*</label>申請日</a><input type="date" id="expenseTemplate_application" name="trip-start">
	        </td>
	    </tr>

		<tr>
	        <td>
	            <a class=markar>* </a><input type="text" id="expenseTemplate_applicant" required placeholder="申請者">
	        </td>
	    </tr>

	    <tr>
	        <td>
	            &nbsp;&nbsp;&nbsp;<input type="button"  value="作成" onclick="createExtemplate()">
	        </td>
	    </tr>
	</table>
	</div>
<!-- 入力結果 -->
	  <div id="result">
		<a class="koumoku">入力内容</a>

	<div id="extemplate_content" style="display: none;">

        <p id="eventResult"></p>
        <p id="contentResult"></p>
        <p id="payResult"></p>
        <p id="feeResult"></p>
        <p id="remarksResult"></p>
        <p id="photoResult"></p>
        <p id="applicationResult"></p>
		<p id="applicantResult"></p>

       <button type="button" onclick="clear_extemplate()">クリア</button>

    </div>
</div>
</div>
<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
<script src="/hydrangea/js/expenses_template.js"></script>
</body>
</html>