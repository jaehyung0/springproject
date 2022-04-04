
var btnlist = document.getElementsByClassName('btn-success');

for (var i = 0; i < btnlist.length; i++) {
    if (btnlist[i].value == '상담내역 및 등록') {
        count++;
    } else {
        alert(i);
    }
}
alert(count);