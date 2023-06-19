function showConfirmation() {
    // 削除ボタンを非表示
    document.getElementById('check-button').style.display = 'none';

    // 削除確認画面を表示
    document.getElementById('confirmation').style.display = 'block';
  }

// function showConfirmation() {
//     // 削除確認画面を表示
//     document.getElementById('confirmation').style.display = 'block';
//   }

  function hideConfirmation() {
    // 削除確認画面を非表示
    document.getElementById('confirmation').style.display = 'none';
    document.getElementById('check-button').style.display = 'block';
  }

  

  function registItem() {
    // 登録処理を実行するためのコードをここに追加します
    // 例えば、アイテムの登録リクエストをサーバーに送信するなど

    // 登録後の処理をここに追加します
    // 例えば、登録完了のメッセージを表示するなど
    document.getElementById('newshop_complete').style.display = 'block';
    document.getElementById('check-button').disabled = true;
  //   setTimeout(function() {
  //   document.getElementById('newshop_complete').style.display = 'none';
  // }, 3000);
    // 登録確認画面を非表示
    hideConfirmation();
  }

 