'use strict';

 window.onload = function kyugyobi(){
	let mon = document.getElementById("holiday_mon").innerHTML;
	let tue = document.getElementById("holiday_tue").innerHTML;
	let wed = document.getElementById("holiday_wed").innerHTML;
	let thu = document.getElementById("holiday_thu").innerHTML;
	let fri = document.getElementById("holiday_fri").innerHTML;
	let sat = document.getElementById("holiday_sat").innerHTML;
	let sun = document.getElementById("holiday_sun").innerHTML;
	let syuku = document.getElementById("holiday_syuku").innerHTML;
	let nenmatsu = document.getElementById("holiday_nenmatsu").innerHTML;
	let other = document.getElementById("holiday_other").innerHTML;

	let table = document.getElementById("sheet_table").innerHTML;
	let tatami = document.getElementById("sheet_tatami").innerHTML;
	let othersheet = document.getElementById("sheet_other").innerHTML;


	if(mon == "true" ){

		document.getElementById("holiday_mon").innerHTML = "月";
	}else{
		document.getElementById("holiday_mon").innerHTML = "";
	}
	if(tue == "true" ){

		document.getElementById("holiday_tue").innerHTML = "火";
	}else{
		document.getElementById("holiday_tue").innerHTML = "";
	}
	if(wed == "true" ){

		document.getElementById("holiday_wed").innerHTML = "水";
	}else{
		document.getElementById("holiday_wed").innerHTML = "";
	}
	if(thu == "true" ){

		document.getElementById("holiday_thu").innerHTML = "木";
	}else{
		document.getElementById("holiday_thu").innerHTML = "";
	}
	if(fri == "true" ){

		document.getElementById("holiday_fri").innerHTML = "金";
	}else{
		document.getElementById("holiday_fri").innerHTML = "";
	}
	if(sat == "true" ){

		document.getElementById("holiday_sat").innerHTML = "土";
	}else{
		document.getElementById("holiday_sat").innerHTML = "";
	}
	if(sun == "true" ){

		document.getElementById("holiday_sun").innerHTML = "日";
	}else{
		document.getElementById("holiday_sun").innerHTML = "";
	}
	if(syuku == "true" ){

		document.getElementById("holiday_syuku").innerHTML = "祝";
	}else{
		document.getElementById("holiday_syuku").innerHTML = "";
	}
	if(nenmatsu == "true" ){

		document.getElementById("holiday_nenmatsu").innerHTML = "年末年始";
	}else{
		document.getElementById("holiday_nenmatsu").innerHTML = "";
	}
	if(other == null ){
		document.getElementById("holiday_other").innerHTML = "";
	}


	if(table == "true" ){

		document.getElementById("sheet_table").innerHTML = "テーブル";
	}else{
		document.getElementById("sheet_table").innerHTML = "";
	}
	if(tatami == "true" ){

		document.getElementById("sheet_tatami").innerHTML = "座敷";
	}else{
		document.getElementById("sheet_tatami").innerHTML = "";
	}

	if(othersheet == null ){
		document.getElementById("sheet_other").innerHTML = "";
	}


}