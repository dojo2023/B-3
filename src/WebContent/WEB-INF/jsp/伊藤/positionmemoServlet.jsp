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
<form method="POST" action="/B1/RegistServlet">
<table id="regist_table">
    <div>
        <button onclick="add()">行追加</button>
        <button onclick="del()">行削除</button>
      </div>
    <input type="submit" name="SUBMIT" value="追加">
	<br>
<tr><th>名前</th><th>役職</th><th>喫煙</th><th>好物1</th><th>好物2</th><th>NG</th><th>備考</th></tr>

<!--<tr><td><input type="text" name="NAME"></td>

<td><input type="text" name="POSITION"></td>

<td><input type="text" name="SMOKING"></td>


<td><input type="text" name="FAVORITE1"></td>

<td><input type="text" name="FAVORITE2"></td>

<td><input type="text" name="NG"></td>

<td><input type="text" name="REMARKS"></td></tr>-->
</table>

</form>
<script>
    'use strict'
    const tbl = document.getElementById("tbl");
    function add(){
    let tr = document.createElement("tsr"); 

    for(let i=0;i<3;i++){
    let td = document.createElement("td");      //新しいtd要素を作って変数tdに格納
  　let inp = document.createElement("input");  //tdに何か追加。ここは例としてinput
  　td.appendChild(inp);        //tdにinpを追加
    tr.appendChild(td);         //trにtdを追加
  }
  tbl.appendChild(tr);  
}
</script>
</body>

<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>

</html>