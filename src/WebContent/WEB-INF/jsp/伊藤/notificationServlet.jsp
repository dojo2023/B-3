<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    </div>
</header>
<body>

<h1>通知テンプレート</h1>
<hr>
<form method="POST" action="/B1/RegistServlet">
<table class="">

    <tr>
        <td>
            <label>件名&ensp;&ensp;&ensp;<input type="text" name="SUBJECT" value=""><br></label>
        </td>
    </tr>

    <tr>
        <td>
            <label>Cc/Bcc&ensp;<input type="text" name="BCC" value=""><br>
            </label>
        </td>
    </tr>

    <tr>
        <td>
            <label>宛名&ensp;&ensp;&ensp;
                <input type="text" name="DEAR" value=""><br>
            </label>
        </td>
    </tr>

    <tr>
        <td>
                <select type="text" name="KAKUI" value="" placeholder="各位">
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
            <textarea cols="100" rows="10"></textarea>
        </td>
    </tr>



<td><p>飲み会の詳細</p></td>

    <tr>
        <td>
            <label>日時：
                <input type="datetime-local" id="meeting-time"
                name="meeting-time" value="2023-06-16T19:30"
                min="2023-06-01T00:00" max="2100-06-14T00:00"><br>
            </label>
        </td>
    </tr>

    <tr>
        <td>
            <label>会場：
                <input type="text" name="VENUE" value=""><br>
            </label>
        </td>
    </tr>

    <tr>
        <td>
            <label>住所：
                <input type="text" name="ADDRESS" value=""><br>
            </label>
        </td>
    </tr>

    <tr>
        <td>
            <label>会費：
                <input type="text" name="shop_name" value=""><br>
            </label>
        </td>
    </tr>

    <tr>
        <td>
            <textarea cols="100" rows="10"></textarea>
        </td>
    </tr>


    <td><p>恐れ入りますが出席のお返事は出席確認フォームにてお知らせください。</p></td>

<tr>
<td><input type="submit" name="SUBMIT" value="送信"><br></td>
</tr>

</table>

</form>
</body>
<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
</html>