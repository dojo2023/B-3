function displayInfo() {
  var shop_name = document.getElementById("shop_name").value;
  var genre = document.getElementById("genre").value;
  var genre_form = document.getElementById("genre_form").value;
  var holiday_mon= document.getElementById("holiday_mon").value;
  var price_min= document.getElementById("price_min").value;
  var price_max= document.getElementById("price_max").value;
  //var = document.getElementById("genre_form").value;

  
  // 入力結果を表示
  document.getElementById("shop_nameResult").innerHTML = "店名: " +  shop_name;
  document.getElementById("genreResult").innerHTML = "ジャンル " + genre;
  document.getElementById("genre_formResult").innerHTML = "形態: " + genre_form;
  document.getElementById("priceResult").innerHTML = "価格:" + price_min +"～"+ price_max;
  
  // 入力フォームを非表示にし、結果を表示
  document.getElementById("registForm").style.display = "none";
  document.getElementById("register_confir").style.display = "block"; }

function editInfo() {
  // 入力フォームを表示し、結果を非表示にする
  document.getElementById("registForm").style.display = "block";
  document.getElementById("register_confir").style.display = "none"; }

