function displayInfo() {
    // var name = document.getElementById("name").value;
    // var email = document.getElementById("email").value;
    var information_title = document.getElementById("information_title").value;
    var information_photo = document.getElementById("information_photo").value;
    var information_subtitle = document.getElementById("information_subtitle").value;
    var information = document.getElementById("information").value;
    // 入力結果を表示
    document.getElementById("titleResult").innerHTML = "タイトル: " + information_title;
    document.getElementById("photoResult").innerHTML = "画像: " + information_photo;
    document.getElementById("subtitleResult").innerHTML = "サブタイトル: " + information_subtitle;
    document.getElementById("informationResult").innerHTML = "本文: " + information;
    // 入力フォームを非表示にし、結果を表示
    document.getElementById("inputForm").style.display = "none";
    document.getElementById("result").style.display = "block"; }
    
  function editInfo() {
    // 入力フォームを表示し、結果を非表示にする
    document.getElementById("inputForm").style.display = "block";
    document.getElementById("result").style.display = "none"; }
  