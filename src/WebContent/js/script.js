function templateInfo() {
    // var name = document.getElementById("name").value;
    // var email = document.getElementById("email").value;
    var template_title = document.getElementById("template_title").value;
    var template_kakui = document.getElementById("template_kakui").value;
    var template_textarea = document.getElementById("template_textarea").value;
    var meeting_time = document.getElementById("meeting_time").value;
    var template_venue = document.getElementById("template_venue").value;
    var template_address = document.getElementById("template_address").value;
    var template_fee= document.getElementById("template_fee").value;
    var template_textarea2 = document.getElementById("template_textarea2").value;
    // 入力結果を表示
    document.getElementById("titleResult").innerHTML = template_title;
    document.getElementById("kakuiResult").innerHTML = template_kakui;
    document.getElementById("textareaResult").innerHTML = template_textarea;
    document.getElementById("meeting_timeResult").innerHTML = meeting_time;
    document.getElementById("venueResult").innerHTML = "会場: " + template_venue;
    document.getElementById("addressResult").innerHTML = "住所: " + template_address;
    document.getElementById("feeResult").innerHTML = "会費: " + template_fee;
    document.getElementById("textarea2Result").innerHTML = template_textarea2;

    // 入力フォームを非表示にし、結果を表示
    document.getElementById("tuutitemplate").style.display = "none";
    document.getElementById("result").style.display = "block"; }

  function correctInfo() {
    // 入力フォームを表示し、結果を非表示にする
    document.getElementById("tuutitemplate").style.display = "block";
    document.getElementById("result").style.display = "none"; }

    function backForm() {
        // 送信処理（ここではダミーの処理として3秒待機して送信完了画面に遷移）
        // 実際の送信処理はサーバーサイドで行う必要があります
        document.getElementById("loading").style.display = "block";
        document.getElementById("result").style.display = "none";
        setTimeout(function() {
          document.getElementById('loading').style.display = 'none'; // 確認表示を非表示に
          document.getElementById('thank-you').style.display = 'block'; // 送信完了画面を表示
        }, 3000);
      }


      function expenseTemplateInfo() {
        // var name = document.getElementById("name").value;
        // var email = document.getElementById("email").value;
        var expenseTemplate_start = document.getElementById("expenseTemplate_start").value;
        var expenseTemplate_applicant = document.getElementById("expenseTemplate_applicant").value;
        var expenseTemplate_start2 = document.getElementById("expenseTemplate_start2").value;
        var expenseTemplate_content = document.getElementById("expenseTemplate_content").value;
        var expenseTemplate_pay = document.getElementById("expenseTemplate_pay").value;
        var expenseTemplate_fee = document.getElementById("expenseTemplate_fee").value;
        var expenseTemplate_remarks= document.getElementById("expenseTemplate_remarks").value;
        var expenseTemplate_photo = document.getElementById("expenseTemplate_photo").value;
        // 入力結果を表示
        document.getElementById("startResult").innerHTML = expenseTemplate_start;
        document.getElementById("applicantResult").innerHTML = "申請者: " + expenseTemplate_applicant;
        document.getElementById("start2Result").innerHTML = expenseTemplate_start2;
        document.getElementById("contentResult").innerHTML = "内容: " + expenseTemplate_content;
        document.getElementById("payResult").innerHTML = "支払先: " + expenseTemplate_pay;
        document.getElementById("feeResult").innerHTML = "金額: " + expenseTemplate_fee;
        document.getElementById("remarksResult").innerHTML = "備考: " + expenseTemplate_remarks;
        document.getElementById("photoResult").innerHTML = expenseTemplate_photo;

        // 入力フォームを非表示にし、結果を表示
        document.getElementById("expenseTemplate").style.display = "none";
        document.getElementById("result").style.display = "block"; }

      function correct2Info() {
        // 入力フォームを表示し、結果を非表示にする
        document.getElementById("expenseTemplate").style.display = "block";
        document.getElementById("result").style.display = "none"; }

        function back2Form() {
            // 送信処理（ここではダミーの処理として3秒待機して送信完了画面に遷移）
            // 実際の送信処理はサーバーサイドで行う必要があります
            document.getElementById("loading").style.display = "block";
            document.getElementById("result").style.display = "none";
            setTimeout(function() {
              document.getElementById('loading').style.display = 'none'; // 確認表示を非表示に
              document.getElementById('thank-you').style.display = 'block'; // 送信完了画面を表示
            }, 3000);
          }
