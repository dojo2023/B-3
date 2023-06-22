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
    </div>
</header>

<body>

    <h1>役職メモ</h1>
    <hr>
    <form method="POST" action="/hydrangea/PositionmemoServlet">

            <input type="submit" name="SUBMIT" value="追加">
            <input type="submit" name="SUBMIT" value="削除">
            <input type="submit" name="SUBMIT" value="更新"><br>

            <table>
                <tr>
                  <td>
                    <label>名前<br>
                    <input type="text" name="NAME" >
                    </label>
                  </td>
                  <td>
                    <label>役職<br>
                    <input type="text" name="POSITION">
                    </label>
                  </td>
                  <td>
                    <label>喫煙<br>
                    <input type="text" name="SMOKING">
                    </label>
                  </td>
                  <td>
                    <label>好物1<br>
                    <input type="text" name="FAVORITE1">
                    </label>
                  </td>
                  <td>
                    <label>好物2<br>
                    <input type="text" name="FAVORITE2">
                    </label>
                  </td>
                  <td>
                    <label>NG<br>
                    <input type="text" name="NG">
                    </label>
                  </td>
                  <td>
                    <label>備考<br>
                    <input type="text" name="REMARKS">
                    </label>
                  </td>
                  </tr>
            </table>


    </form>


</body>

<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>

</html>