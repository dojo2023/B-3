function showConfirmation() {
    // 削除ボタンを非表示
    document.getElementById('delete-button').style.display = 'none';

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
    document.getElementById('delete-button').style.display = 'block';
  }

  

  function deleteItem() {
    // 削除処理を実行するためのコードをここに追加します
    // 例えば、アイテムの削除リクエストをサーバーに送信するなど

    // 削除後の処理をここに追加します
    // 例えば、削除完了のメッセージを表示するなど

    // 削除確認画面を非表示
    hideConfirmation();
  }

 