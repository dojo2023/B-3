

function createExtemplate(){

document.getElementById("extemplate_content").style.display = "block";

var expenseTemplate_application = document.getElementById("expenseTemplate_application").value;
var expenseTemplate_applicant = document.getElementById("expenseTemplate_applicant").value;
var expenseTemplate_event=document.getElementById("expenseTemplate_event").value;
var expenseTemplate_content=document.getElementById("expenseTemplate_content").value;
var expenseTemplate_pay=document.getElementById("expenseTemplate_pay").value;
const expenseTemplate_fee=document.getElementById("expenseTemplate_fee").value;
const expenseTemplate_remarks=document.getElementById("expenseTemplate_remarks").value;
const expenseTemplate_photo=document.getElementById("expenseTemplate_photo").value;


 if (expenseTemplate_applicant === "" || expenseTemplate_application ==="" || expenseTemplate_content ==="") {
    alert("必須項目が未入力です。");
    return;
  }

document.getElementById("applicationResult").innerHTML = "申請日 "+ expenseTemplate_application;
document.getElementById("applicantResult").textContent = "申請者 "+ expenseTemplate_applicant;

 if (expenseTemplate_event === ""){
 document.getElementById("eventResult").innerHTML = ""+ expenseTemplate_event;

 }else{
 document.getElementById("eventResult").innerHTML = "開催日 "+ expenseTemplate_event;
 }


document.getElementById("contentResult").textContent =  expenseTemplate_content;
document.getElementById("payResult").innerHTML =  expenseTemplate_pay;
document.getElementById("feeResult").innerHTML =  expenseTemplate_fee;
document.getElementById("remarksResult").textContent =  expenseTemplate_remarks;

 if (expenseTemplate_photo === "") {

document.getElementById("photoResult").innerHTML = ""+ expenseTemplate_photo;

  }else{

document.getElementById("photoResult").innerHTML = "添付ファイル "+ expenseTemplate_photo;
}

}

function clear_extemplate(){

document.getElementById("applicationResult").innerHTML = ""
document.getElementById("applicantResult").textContent = "";
document.getElementById("eventResult").innerHTML = "";
document.getElementById("contentResult").textContent = "";
document.getElementById("payResult").innerHTML = "";
document.getElementById("feeResult").innerHTML = "";
document.getElementById("remarksResult").textContent = "";
document.getElementById("photoResult").innerHTML = "";

document.getElementById("extemplate_content").style.display = "none";

}
