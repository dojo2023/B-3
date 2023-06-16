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

    function submitForm() {
        // 送信処理（ここではダミーの処理として3秒待機して送信完了画面に遷移）
        // 実際の送信処理はサーバーサイドで行う必要があります
        document.getElementById("loading").style.display = "block";
        document.getElementById("result").style.display = "none"; 
        setTimeout(function() {
          document.getElementById('loading').style.display = 'none'; // 確認表示を非表示に
          document.getElementById('thank-you').style.display = 'block'; // 送信完了画面を表示
        }, 3000);
      }
  