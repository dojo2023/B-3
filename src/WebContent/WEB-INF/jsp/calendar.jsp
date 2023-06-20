<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<html>
<header>
    <div class="hamburger-menu">
        <input type="checkbox" id="menu-btn-check">
        <label for="menu-btn-check" class="menu-btn"><span></span></label>
        <!--ここからメニュー-->
        <div class="menu-content">
            <ul>
                <li>
                    <a href="">トップ</a>
                </li>
                <li>
                    <a href="">登録</a>
                </li>
                <li>
                    <a href="">履歴</a>
                </li>
                <li>
                    <a href="">役職メモ</a>
                </li>
                <li>
                    <a href="">メモ</a>
                </li>
                <li>
                    <a href="">カレンダー</a>
                </li>
        <li>
                    <a href="">通知文テンプレート</a>
                </li>
        <li>
                    <a href="">経費申請書テンプレート</a>
                </li>
        <li>
                    <a href="">ログアウト</a>
                </li>
            </ul>
        </div>
        <!--ここまでメニュー-->
    </div>
<meta charset="UTF-8">
<title>カレンダー</title>
<style>
    .menu-btn {
    position: fixed;
    top: 10px;
    right: 10px;
    display: flex;
    height: 60px;
    width: 60px;
    justify-content: center;
    align-items: center;
    z-index: 90;
    background-color: #eeece9;
}
.menu-btn span,
.menu-btn span:before,
.menu-btn span:after {
    content: '';
    display: block;
    height: 3px;
    width: 25px;
    border-radius: 3px;
    background-color: black;
    position: absolute;
}
.menu-btn span:before {
    bottom: 8px;
}
.menu-btn span:after{
    top: 8px;
}
#menu-btn-check:checked ~ .menu-btn span {
    background-color: rgba(255, 255, 255, 0);/*メニューオープン時は真ん中の線を透明にする*/
}
#menu-btn-check:checked ~ .menu-btn span::before {
    bottom: 0;
    transform: rotate(45deg);
}
#menu-btn-check:checked ~ .menu-btn span::after {
    top: 0;
    transform: rotate(-45deg);
}
#menu-btn-check {
    display: none;
}
.menu-content {
    width: 25%;
    height: 100%;
    position: fixed;
    top: 0;
    right: 100%;/*leftの値を変更してメニューを画面外へ*/
    z-index: 80;
    background-color: #c0c0c0;
    transition: all 0.5s;/*アニメーション設定*/
}
.menu-content ul {
    padding: 70px 10px 0;
}
.menu-content ul li {
    border-bottom: solid 1px #000000;
    list-style: none;
}
.menu-content ul li a {
    display: block;
    width: 100%;
    font-size: 15px;
    box-sizing: border-box;
    color:#000000;
    text-decoration: none;
    padding: 9px 15px 10px 0;
    position: relative;
}
.menu-content ul li a::before {
    content: "";
    width: 7px;
    height: 7px;
    border-top: solid 2px #000000;
    border-right: solid 2px #000000;
    transform: rotate(45deg);
    position: absolute;
    right: 11px;
    top: 16px;
}
#menu-btn-check:checked ~ .menu-content {
    right: 0;/*メニューを画面内へ*/
}
.menu-content a:hover {
    /*color: #e3937a;*/
    font-weight:800;
}
.menu-content a:active {
    color: blue;
}









.calendar-container {
  width: 500px;
  margin: 0 auto;
  border-radius: 5px;
  background: #f6f5f4;
  color: #1a1a1a;
}
h1 {
  height: 80px;
  line-height: 80px;
  text-align: center;
  font-size: 24px;
  margin: 0;
}
.calendar {
  padding: 0 30px 30px 30px;
}
table {
  width: 500%;
  height: 100%;
}
th, td {
  text-align: center;
  padding: 10px;
}
th {
  font-weight: normal;
  font-size: 14px;
}
td {
  font-weight: bold;
}
.day *:first-child {
  color: #ff838b;
}
.day *:last-child {
  color: #6fb5ff;
}

#calendar {
    display: flex;
    flex-wrap: wrap;
}

section {
    margin: 10px;
}

h1 {
    font-size: 18px;
}

table {
    border-spacing: 0;
    border-collapse: collapse;
}

td {
    border: 1px solid #ddd;
    padding: 5px;
    text-align: center;
}

td:first-child {
    color: red;
}

td:last-child {
    color: royalblue;
}

td.is-disabled {
    color: #ccc;
}

</style>
</header>
<body>
<h1>カレンダー</h1>
<div id="calendar"  style="margin-left: 5%; margin-right: 5%;"></div>
<br><br><br><br><br>
<script>
  const weeks = ['日', '月', '火', '水', '木', '金', '土']
const date = new Date()
let year = date.getFullYear()
let month = date.getMonth() + 1
const config = {
    show: 1,
}

function showCalendar(year, month) {
    for ( i = 0; i < config.show; i++) {
        const calendarHtml = createCalendar(year, month)
        const sec = document.createElement('section')
        sec.innerHTML = calendarHtml
        document.querySelector('#calendar').appendChild(sec)

        month++
        if (month > 12) {
            year++
            month = 1
        }
    }
}

function createCalendar(year, month) {
    const startDate = new Date(year, month - 1, 1) // 月の最初の日を取得
    const endDate = new Date(year, month,  0) // 月の最後の日を取得
    const endDayCount = endDate.getDate() // 月の末日
    const lastMonthEndDate = new Date(year, month - 2, 0) // 前月の最後の日の情報
    const lastMonthendDayCount = lastMonthEndDate.getDate() // 前月の末日
    const startDay = startDate.getDay() // 月の最初の日の曜日を取得
    let dayCount = 1 // 日にちのカウント
    let calendarHtml = '' // HTMLを組み立てる変数

    calendarHtml += '<h1>' + year  + '/' + month + '</h1>'
    calendarHtml += '<table>'

    // 曜日の行を作成
    for (let i = 0; i < weeks.length; i++) {
        calendarHtml += '<td>' + weeks[i] + '</td>'
    }

    for (let w = 0; w < 6; w++) {
        calendarHtml += '<tr>'

        for (let d = 0; d < 7; d++) {
            if (w == 0 && d < startDay) {
                // 1行目で1日の曜日の前
                let num = lastMonthendDayCount - startDay + d + 1
                calendarHtml += '<td class="is-disabled">' + num + '</td>'
            } else if (dayCount > endDayCount) {
                // 末尾の日数を超えた
                let num = dayCount - endDayCount
                calendarHtml += '<td class="is-disabled">' + num + '</td>'
                dayCount++
            } else {
                calendarHtml += `<td class="calendar_td" data-date="${year}/${month}/${dayCount}">${dayCount}</td>`
                dayCount++
            }
        }
        calendarHtml += '</tr>'
    }
    calendarHtml += '</table>'

    return calendarHtml
}


document.addEventListener("click", function(e) {
    if(e.target.classList.contains("calendar_td")) {
        alert('クリックした日付は' + e.target.dataset.date + 'です')
    }
})

showCalendar(year, month)
</script>
</body>

<footer>
  <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
</html>