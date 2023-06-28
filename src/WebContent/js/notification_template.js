
function createNotemplate(){

document.getElementById("notemplate_content").style.display = "block";

var template_title = document.getElementById("template_title").value;
var template_kakui = document.getElementById("template_kakui").value;
var template_textarea=document.getElementById("template_textarea").value;
var meeting_date=document.getElementById("meeting_date").value;
var meeting_time=document.getElementById("meeting_time").value;
var template_venue=document.getElementById("template_venue").value;
const template_address=document.getElementById("template_address").value;
const template_fee=document.getElementById("template_fee").value;
const template_textarea2=document.getElementById("template_textarea2").value;


 if (template_title === "" ) {
    alert("必須項目が未入力です。");
    return;
  }

document.getElementById("titleResult").innerHTML =  template_title

 if (template_kakui !== "Others" ) {
document.getElementById("kakuiResult").innerHTML =  template_kakui + "各位";
  }

if(template_textarea === "" ){
document.getElementById("textareaResult").textContent = "皆様お疲れ様です。表題につきまして、ご案内いたします。";
}else{
document.getElementById("textareaResult").textContent = template_textarea;
}
if(meeting_date !== "" ||meeting_time !== ""|| template_venue!==""|| template_address!==""||template_fee!==""){
document.getElementById("informationResult").textContent ="開催情報" ;
}
document.getElementById("meeting_dateResult").innerHTML =meeting_date ;
document.getElementById("meeting_timeResult").innerHTML = meeting_time;
document.getElementById("venueResult").textContent =  template_venue;
document.getElementById("addressResult").innerHTML =  template_address;
document.getElementById("feeResult").innerHTML =  template_fee;

if(template_textarea === "" ){
document.getElementById("textarea2Result").textContent = "ご不明な点はお気軽にお問い合わせください。当日はよろしくお願いいたします。";
}else{
document.getElementById("textarea2Result").textContent = template_textarea2;
}


}

function clear_notemplate(){

document.getElementById("textareaResult").textContent = "";
document.getElementById("meeting_dateResult").innerHTML = "";
document.getElementById("meeting_timeResult").innerHTML = "";
document.getElementById("venueResult").textContent =  "";
document.getElementById("addressResult").innerHTML =  "";
document.getElementById("feeResult").innerHTML =  "";
document.getElementById("textarea2Result").textContent =  "";

document.getElementById("notemplate_content").style.display = "none";

}