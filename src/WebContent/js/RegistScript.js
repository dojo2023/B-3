 function displayConfirmation() {
  var shop_name = document.getElementById("shop_name").value;
  var genre = document.getElementById("genre").value;
  var genre_form = document.getElementById("genre_form").value;
  var price_min = document.getElementById("price_min").value;
  var price_max = document.getElementById("price_max").value;
  var open_hei = document.getElementById("open_hei").value;
  var close_hei = document.getElementById("close_hei").value;
  var open_kyu = document.getElementById("open_kyu").value;
  var close_kyu = document.getElementById("close_kyu").value;
  var holiday_mon = document.getElementById("holiday_mon").checked;
  var holiday_tue = document.getElementById("holiday_tue").checked;
  var holiday_wed = document.getElementById("holiday_wed").checked;
  var holiday_thu = document.getElementById("holiday_thu").checked;
  var holiday_fri = document.getElementById("holiday_fri").checked;
  var holiday_sat = document.getElementById("holiday_sat").checked;
  var holiday_sun = document.getElementById("holiday_sun").checked;
  var holiday_syuku = document.getElementById("holiday_syuku").checked;
  var holiday_nenmatsu = document.getElementById("holiday_nenmatsu").checked;

  var holiday_other_text = document.getElementById("holiday_other_text").value;

  var distance = document.getElementById("distance").value;
  var address = document.getElementById("address").value;
  var tabaco = document.querySelector('input[name="tabaco"]:checked');
  var sheet_table = document.getElementById("sheet_table").checked;
  var sheet_tatami = document.getElementById("sheet_tatami").checked;

  var sheet_other_text = document.getElementById("sheet_other_text").value;
  var capacity = document.getElementById("capacity").value;
  var eat_drink = document.querySelector('input[name="eat_drink"]:checked');
  var score = document.getElementById("score").value;
  var tel = document.getElementById("tel").value;
  var homepage = document.getElementById("homepage").value;
  var other_tel = document.getElementById("other_tel").value;
  var photo = document.getElementById("photo").value;
  var remarks_shop = document.getElementById("remarks_shop").value;
  //var = document.getElementById("").value;

  if (shop_name === "" || photo ==="") {
    alert("必須項目が未入力です。");
    return;
  }
  // 入力結果を表示
  document.getElementById("shop_nameResult").textContent = "店名: " + shop_name;
  document.getElementById("genreResult").innerHTML = "ジャンル " + genre;
  document.getElementById("genre_formResult").innerHTML = "形態: " + genre_form;
  document.getElementById("prieResult").innerHTML = "価格: " + price_min + "～" + price_max;
  document.getElementById("heiReselt").innerHTML = "平日営業時間: " + open_hei + "～" + close_hei;
  document.getElementById("kyuReselt").innerHTML = "休日営業時間: " + open_kyu + "～" + close_kyu;
  document.getElementById("holiday_monReselt").textContent = "休業日: " + (holiday_mon ? "月" : "");
  document.getElementById("holiday_tueReselt").textContent = (holiday_tue ? "火" : "");
  document.getElementById("holiday_wedReselt").textContent = (holiday_wed ? "水" : "");
  document.getElementById("holiday_thuReselt").textContent = (holiday_thu ? "木" : "");
  document.getElementById("holiday_friReselt").textContent = (holiday_fri ? "金" : "");
  document.getElementById("holiday_satReselt").textContent = (holiday_sat ? "土" : "");
  document.getElementById("holiday_sunReselt").textContent = (holiday_sun ? "日" : "");
  document.getElementById("holiday_syukuReselt").textContent = (holiday_syuku ? "祝日" : "");
  document.getElementById("holiday_nenmatsuReselt").textContent = (holiday_nenmatsu ? "年末年始" : "");

  document.getElementById("holiday_other_textReselt").textContent = holiday_other_text;
  document.getElementById("distanceReselt").textContent = "会社からの距離: " + distance;
  document.getElementById("addressReselt").textContent = "住所: " + address;
  document.getElementById("tabacoReselt").textContent = "喫煙: " + (tabaco ? tabaco.value : "");
  document.getElementById("sheet_tableReselt").textContent = "座席: " + (sheet_table ? "テーブル" : "")
  document.getElementById("sheet_tatamiReselt").textContent = (sheet_tatami ? "座敷" : "");

  document.getElementById("sheet_other_textReselt").textContent = sheet_other_text;
  document.getElementById("capacityReselt").textContent = "規模: " + capacity;
  document.getElementById("eat_drinkReselt").textContent = "飲み放題・食べ放題: " + (eat_drink ? eat_drink.value : "");
  document.getElementById("scoreResult").innerHTML = "評価:" + score;
  document.getElementById("telResult").innerHTML = "電話番号:" + tel;
  document.getElementById("homepageResult").innerHTML = "ホームページ:" + homepage;
  document.getElementById("other_telResult").innerHTML = "その他連絡先:" + other_tel;
  document.getElementById("photoResult").innerHTML = "画像:" + photo;
  document.getElementById("remarks_shopResult").innerHTML = "備考:" + remarks_shop;






  // 入力フォームを非表示にし、結果を表示
  document.getElementById("registForm").style.display = "none";
  document.getElementById("register_confir").style.display = "block";
}

function editInfo() {
  // 入力フォームを表示し、結果を非表示にする
  document.getElementById("registForm").style.display = "block";
  document.getElementById("register_confir").style.display = "none";
}


function register() {
  // 確認画面を非表示にし、登録完了画面を表示
  document.getElementById("register_confir").style.display = "none";
  document.getElementById("success").style.display = "block";
}




		function previewImage(obj) {
			var fileReader = new FileReader();
			fileReader.onload = (function() {
				document.getElementById('preview').src = fileReader.result;
			});
			//指定したfile型のファイルを読み込む
			fileReader.readAsDataURL(obj.files[0]);
		}



