<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>幹事サポート</title>
</head>
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

</header>
<body>
	<form method="POST" action="/hydrangea/ExpensesServlet">
    <div id="result" style="display: none;">
        <h2>入力結果:</h2>

        <p id="startResult"></p>
        <p id="applicantResult"></p>
        <p id="start2Result"></p>
        <p id="contentResult"></p>
        <p id="payResult"></p>
        <p id="feeResult"></p>
        <p id="remarksResult"></p>
        <p id="photoResult"></p>


        <button type="button" onclick="correct2Info()">訂正</button>
        <a href="/hydrangea/ExpensesServlet"><button type="button" onclick="back2Form()">戻る</button></a>
    </div>

<div id="expenseTemplate">
<h1>経費申請書テンプレート</h1>
<hr>
<table>

    <p>経費申請書</p>

    <tr>
        <td>
            <input type="date" id="expenseTemplate_start" name="trip-start"
                value="2023-06-20"
                min="2023-01-01" max="2200-12-31">
        </td>
    </tr>

    <tr>
        <td>
            <input type="text" id="expenseTemplate_applicant" required placeholder="申請者">
        </td>
    </tr>

    <tr>
        <td>
            <input type="date" id="expenseTemplate_start2" name="trip-start"
                value="2023-06-20"
                min="2023-01-01" max="2200-12-31">
        </td>
    </tr>

    <tr>
        <td>
            <input type="text" id="expenseTemplate_content" required placeholder="内容">
        </td>
    </tr>

    <tr>
        <td>
            <input type="text" id="expenseTemplate_pay" required placeholder="支払先">
        </td>
    </tr>

    <tr>
        <td>
            <input type="text" id="expenseTemplate_fee" required placeholder="金額">
        </td>
    </tr>

    <tr>
        <td>
            <input type="text" id="expenseTemplate_remarks" required placeholder="備考">
        </td>
    </tr>

    <tr>
        <td>
            <input type="file" id="expenseTemplate_photo">
        </td>
    </tr>

    <tr>
        <td>
            <button type="button" onclick="expenseTemplateInfo()">作成</button>
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