function displayInfo() {
  var shop_name = document.getElementById("shop_name").value;
  var genre = document.getElementById("genre").value;
  var genre_form = document.getElementById("genre_form").value;
  var holiday_mon= document.getElementById("holiday_mon").value;
  var price_min= document.getElementById("price_min").value;
  var price_max= document.getElementById("price_max").value;
  var open_hei= document.getElementById("open_hei").value;
  var close_hei= document.getElementById("close_hei").value;
  var open_kyu= document.getElementById("open_kyu").value;
  var close_kyu= document.getElementById("close_kyu").value;
  //var = document.getElementById("genre_form").value;

  // 入力結果を表示
  document.getElementById("shop_nameResult").innerHTML = "店名: " +  shop_name;
  document.getElementById("genreResult").innerHTML = "ジャンル " + genre;
  document.getElementById("genre_formResult").innerHTML = "形態: " + genre_form;
  document.getElementById("prieResult").innerHTML = "価格: "+ price_min +"～"+ price_max;
  document.getElementById("heiReselt").innerHTML = "平日営業時間: " + open_hei +"～"+ close_hei;
  document.getElementById("kyuReselt").innerHTML = "休日営業時間: " + open_kyu +"～"+ close_kyu;
  

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
    