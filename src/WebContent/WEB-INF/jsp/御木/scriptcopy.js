function displayConfirmation() {
  var shop_name = document.getElementById("shop_name").value;
  var genre = document.getElementById("genre").value;
  var genre_form = document.getElementById("genre_form").value;
  var price_min= document.getElementById("price_min").value;
  var price_max= document.getElementById("price_max").value;
  var open_hei= document.getElementById("open_hei").value;
  var close_hei= document.getElementById("close_hei").value;
  var open_kyu= document.getElementById("open_kyu").value;
  var close_kyu= document.getElementById("close_kyu").value;
  var holiday_mon= document.getElementById("holiday_mon").checked;
  var holiday_tue= document.getElementById("holiday_tue").checked;
  var holiday_wed= document.getElementById("holiday_wed").checked;
  var holiday_thu= document.getElementById("holiday_thu").checked;
  var holiday_fri= document.getElementById("holiday_fri").checked;
  var holiday_sat= document.getElementById("holiday_sat").checked;
  var holiday_sun= document.getElementById("holiday_sun").checked;
  var holiday_syuku= document.getElementById("holiday_syuku").checked;
  var holiday_nenmatsu= document.getElementById("holiday_nenmatsu").checked;
  var holiday_other= document.getElementById("holiday_other").checked;
  var holiday_other_text= document.getElementById("holiday_other_text").value;
  if (shop_name === "") {
    alert("名前は必須です。");
    return;
}
if (genre === "") {
  alert("ジャンルは必須です。");
  return;
}
if (genre_form === "") {
  alert("形態は必須です。");
  return;
}
  // 入力結果を表示
  document.getElementById("shop_nameResult").textContent = "店名: " +  shop_name;
  document.getElementById("genreResult").innerHTML = "ジャンル " + genre;
  document.getElementById("genre_formResult").innerHTML = "形態: " + genre_form;
  document.getElementById("prieResult").innerHTML = "価格: "+ price_min +"～"+ price_max;
  document.getElementById("heiReselt").innerHTML = "平日営業時間: " + open_hei +"～"+ close_hei;
  document.getElementById("kyuReselt").innerHTML = "休日営業時間: " + open_kyu +"～"+ close_kyu;
  document.getElementById("holiday_monReselt").textContent = "休業日: " + (holiday_mon ? "月" : "");
  document.getElementById("holiday_tueReselt").textContent =  (holiday_tue ? "火" : "");
  document.getElementById("holiday_wedReselt").textContent =  (holiday_wed ? "水" : "");
  document.getElementById("holiday_thuReselt").textContent =  (holiday_thu ? "木" : "");
  document.getElementById("holiday_friReselt").textContent =  (holiday_fri ? "金" : "");
  document.getElementById("holiday_satReselt").textContent =  (holiday_sat ? "土" : "");
  document.getElementById("holiday_sunReselt").textContent =  (holiday_sun ? "日" : "");
  document.getElementById("holiday_syukuReselt").textContent =  (holiday_syuku ? "祝日" : "");
  document.getElementById("holiday_nenmatsuReselt").textContent =  (holiday_nenmatsu ? "年末年始" : "");
  document.getElementById("holiday_otherReselt").textContent =  (holiday_other ? "その他" : "");




  // 入力フォームを非表示にし、結果を表示
  document.getElementById("registForm").style.display = "none";
  document.getElementById("register_confir").style.display = "block"; }

function editInfo() {
  // 入力フォームを表示し、結果を非表示にする
  document.getElementById("registForm").style.display = "block";
  document.getElementById("register_confir").style.display = "none"; }


  function register() {
    // 確認画面を非表示にし、登録完了画面を表示
    document.getElementById("register_confir").style.display = "none";
    document.getElementById("success").style.display = "block"; }
  
/*
    function toggleOutput() {
      //チェックボックス処理
      var checkbox = document.getElementById("holiday_mon");
      var output = document.getElementById("output");
    
      if (checkbox.checked) {
        output.innerHTML = "月";
      } else {
        output.innerHTML = "";
      }
    }
    */

