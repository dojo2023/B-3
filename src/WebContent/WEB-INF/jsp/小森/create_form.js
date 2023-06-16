'use strict'

let formcreate = document.getElementById('formcreate');
    formcreate.addEventListener('click', buttonClick);
 
function buttonClick(){
   
    window.open("created_form.html");
    // windowオブジェクトを変数に格納 
    var obj_window = window.open("created_form.html");
  // 親ウィンドウから子ウィンドウへ値を渡す
  obj_window.document.getElementById("ch_event_name").value = document.getElementById("event_name").innerHTML;
  obj_window.document.getElementById("ch_event_detail").value  = document.getElementById("event_detail").innerHTML;
}

window.onload = function(){
    // 親ウィンドウの存在チェック
    if(!window.opener || window.opener.closed){
       window.alert('親ウィンドウがありません。');
       return false;
    }else{
        window.alert('親ウィンドウあり。');
        return true;
    }

    document.write(document.getElementById("ch_event_name").value);
}