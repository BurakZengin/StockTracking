/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var graph = 2;
var businessPack = 2;
var businessPackCount = 1;
var reservation1start;
var reservation1end;
var tempStartProjectMonth;
var tempEndProjectMonth;
var tempStartProjectYear;

function date() {
    var tempProjectDate = $('#reservation').val();
    var tempProjectDate2 = tempProjectDate.split("-");
    var tempStartProjectDate = tempProjectDate2[0]; // 01/15/2016
    var tempStartProjectDate2 = tempStartProjectDate.split("/");
    tempStartProjectMonth = tempStartProjectDate2[0]; // 01
    var tempStartProjectDay = tempStartProjectDate2[1]; // 15
    var tempStartProjectYear = tempStartProjectDate2[2]; // 2016

    var tempEndProjectDate = tempProjectDate2[1];   // 02/25/2016
    var tempEndProjectDate2 = tempEndProjectDate.split("/");
    tempEndProjectMonth = tempEndProjectDate2[0]; // 02
    var tempEndProjectDay = tempEndProjectDate2[1]; // 25
    var tempEndProjectYear = tempEndProjectDate2[2]; // 2016

    var diffMonth = 2 + monthDiff(new Date(tempStartProjectYear, tempStartProjectMonth, tempStartProjectDay),
            new Date(tempEndProjectYear, tempEndProjectMonth, tempEndProjectDay));
    $("#projectDuration").val(diffMonth);
}

$(function () {
    $(document).on('click', '.btn-add', function (e) {
        businessPackCount++;
        document.getElementById('doc' + businessPack).setAttribute("style", "");
        document.getElementById('bar' + graph++).setAttribute("style", "");

        var controlForm = $('.controls form:first');
        var a = ".doc" + --businessPack + ":first .btn-add";
        controlForm.find(a)
                .removeClass('btn-add').addClass('btn-remove')
                .removeClass('btn-success').addClass('btn-danger')
                .attr("onClick", "reply_click(this.id)")
                .html('<span class="glyphicon glyphicon-minus"></span>');
        businessPack += 2;
    });
});

function reply_click(clicked_id) {
    businessPackCount--;
    document.getElementById('doc' + clicked_id).setAttribute("style", "display: none;");
    document.getElementById('bar' + clicked_id).setAttribute("style", "display: none;");
}

function viewModel() {
    var value = $('#name-1').val();
    var value2 = $('#name-2').val();
    var value3 = $('#name-3').val();
    var value4 = $('#name-4').val();
    var value5 = $('#name-5').val();
    var value6 = $('#name-6').val();
    var value7 = $('#name-7').val();
    var value8 = $('#name-8').val();
    var value9 = $('#name-9').val();
    var value10 = $('#name-10').val();
    var value11 = $('#name-11').val();
    var value12 = $('#name-12').val();
    var value13 = $('#name-13').val();
    var value14 = $('#name-14').val();
    var value15 = $('#name-15').val();
    var value16 = $('#name-16').val();
    packageName1 = ko.observable(value);
    packageName2 = ko.observable(value2);
    packageName3 = ko.observable(value3);
    packageName4 = ko.observable(value4);
    packageName5 = ko.observable(value5);
    packageName6 = ko.observable(value6);
    packageName7 = ko.observable(value7);
    packageName8 = ko.observable(value8);
    packageName9 = ko.observable(value9);
    packageName10 = ko.observable(value10);
    packageName11 = ko.observable(value11);
    packageName12 = ko.observable(value12);
    packageName13 = ko.observable(value13);
    packageName14 = ko.observable(value14);
    packageName15 = ko.observable(value15);
    packageName16 = ko.observable(value16);
}

var month;
var tempMonth = ["January", "February", "March",
    "April", "May", "June",
    "July", "August", "September",
    "October", "November", "December", "January", "February", "March",
    "April", "May", "June",
    "July", "August", "September",
    "October", "November", "December", "January", "February", "March",
    "April", "May", "June",
    "July", "August", "September",
    "October", "November", "December", "January", "February", "March",
    "April", "May", "June",
    "July", "August", "September",
    "October", "November", "December"];

function monthDiff(d1, d2) {
    var months;
    months = (d2.getFullYear() - d1.getFullYear()) * 12;
    months -= d1.getMonth() + 1;
    months += d2.getMonth();
    return months <= 0 ? 0 : months;
}

var reservation2start;
var reservation2end;
var reservation3start;
var reservation3end;
var reservation4start;
var reservation4end;
var reservation5start;
var reservation5end;
var reservation6start;
var reservation6end;
var reservation7start;
var reservation7end;
var reservation8start;
var reservation8end;
var reservation9start;
var reservation9end;
var reservation10start;
var reservation10end;
var reservation11start;
var reservation11end;
var reservation12start;
var reservation12end;
var reservation13start;
var reservation13end;
var reservation14start;
var reservation14end;
var reservation15start;
var reservation15end;
var reservation16start;
var reservation16end;

function funcs() {
    var tempProjectDate = $('#reservation').val();
    var tempProjectDate2 = tempProjectDate.split("-");
    var tempStartProjectDate = tempProjectDate2[0]; // 01/15/2016
    var tempStartProjectDate2 = tempStartProjectDate.split("/");
    tempStartProjectMonth = tempStartProjectDate2[0]; // 01
    var tempStartProjectDay = tempStartProjectDate2[1]; // 15
    tempStartProjectYear = tempStartProjectDate2[2]; // 2016

    var tempEndProjectDate = tempProjectDate2[1];   // 02/25/2016
    var tempEndProjectDate2 = tempEndProjectDate.split("/");
    tempEndProjectMonth = tempEndProjectDate2[0]; // 02
    var tempEndProjectDay = tempEndProjectDate2[1]; // 25
    var tempEndProjectYear = tempEndProjectDate2[2]; // 2016

    var diffMonth = 2 + monthDiff(new Date(tempStartProjectYear, tempStartProjectMonth, tempStartProjectDay),
            new Date(tempEndProjectYear, tempEndProjectMonth, tempEndProjectDay));
    //console.log("tempStartProjectMonth " + tempStartProjectMonth);
    //console.log("diffMonth " + diffMonth);
    month = tempMonth.slice();
    month.splice(0, (tempStartProjectMonth - 1));
    month.splice(diffMonth);
        
    var $range1 = $("#range_1");
    var $range2 = $("#range_2");
    var $range3 = $("#range_3");
    var $range4 = $("#range_4");
    var $range5 = $("#range_5");
    var $range6 = $("#range_6");
    var $range7 = $("#range_7");
    var $range8 = $("#range_8");
    var $range9 = $("#range_9");
    var $range10 = $("#range_10");
    var $range11 = $("#range_11");
    var $range12 = $("#range_12");
    var $range13 = $("#range_13");
    var $range14 = $("#range_14");
    var $range15 = $("#range_15");
    var $range16 = $("#range_16");
    var slider1 = $range1.data("ionRangeSlider");
    var slider2 = $range2.data("ionRangeSlider");
    var slider3 = $range3.data("ionRangeSlider");
    var slider4 = $range4.data("ionRangeSlider");
    var slider5 = $range5.data("ionRangeSlider");
    var slider6 = $range6.data("ionRangeSlider");
    var slider7 = $range7.data("ionRangeSlider");
    var slider8 = $range8.data("ionRangeSlider");
    var slider9 = $range9.data("ionRangeSlider");
    var slider10 = $range10.data("ionRangeSlider");
    var slider11 = $range11.data("ionRangeSlider");
    var slider12 = $range12.data("ionRangeSlider");
    var slider13 = $range13.data("ionRangeSlider");
    var slider14 = $range14.data("ionRangeSlider");
    var slider15 = $range15.data("ionRangeSlider");
    var slider16 = $range16.data("ionRangeSlider");

    var result = {
        type: "double",
        grid: true,
        from: reservation1start,
        to: reservation1end,
        values: month
    };

    slider1.update(result);
    result.from = reservation2start;
    result.to = reservation2end;
    slider2.update(result);
    result.from = reservation3start;
    result.to = reservation3end;
    slider3.update(result);
    result.from = reservation4start;
    result.to = reservation4end;
    slider4.update(result);
    result.from = reservation5start;
    result.to = reservation5end;
    slider5.update(result);
    result.from = reservation6start;
    result.to = reservation6end;
    slider6.update(result);
    result.from = reservation7start;
    result.to = reservation7end;
    slider7.update(result);
    result.from = reservation8start;
    result.to = reservation8end;
    slider8.update(result);
    result.from = reservation9start;
    result.to = reservation9end;
    slider9.update(result);
    result.from = reservation10start;
    result.to = reservation10end;
    slider10.update(result);
    result.from = reservation11start;
    result.to = reservation11end;
    slider11.update(result);
    result.from = reservation12start;
    result.to = reservation12end;
    slider12.update(result);
    result.from = reservation13start;
    result.to = reservation13end;
    slider13.update(result);
    result.from = reservation14start;
    result.to = reservation14end;
    slider14.update(result);
    result.from = reservation15start;
    result.to = reservation15end;
    slider15.update(result);
    result.from = reservation16start;
    result.to = reservation16end;
    slider16.update(result);

    date2();
    date3();
    date4();
    date5();
    date6();
    date7();
    date8();
    date9();
    date10();
    date11();
    date12();
    date13();
    date14();
    date15();
    date16();
    date17();
}
function date2() {
    var a = calculateDate("reservation1", reservation1start, reservation1end);
    reservation1start = a[0];
    reservation1end = a[1];
}
function date3() {
    var a = calculateDate("reservation2", reservation2start, reservation2end);
    reservation2start = a[0];
    reservation2end = a[1];
}
function date4() {
    var a = calculateDate("reservation3", reservation3start, reservation3end);
    reservation3start = a[0];
    reservation3end = a[1];
}
function date5() {
    var a = calculateDate("reservation4", reservation4start, reservation4end);
    reservation4start = a[0];
    reservation4end = a[1];
}
function date6() {
    var a = calculateDate("reservation5", reservation5start, reservation5end);
    reservation5start = a[0];
    reservation5end = a[1];
}
function date7() {
    var a = calculateDate("reservation6", reservation6start, reservation6end);
    reservation6start = a[0];
    reservation6end = a[1];
}
function date8() {
    var a = calculateDate("reservation7", reservation7start, reservation7end);
    reservation7start = a[0];
    reservation7end = a[1];
}
function date9() {
    var a = calculateDate("reservation8", reservation8start, reservation8end);
    reservation8start = a[0];
    reservation8end = a[1];
}
function date10() {
    var a = calculateDate("reservation9", reservation9start, reservation9end);
    reservation9start = a[0];
    reservation9end = a[1];
}
function date11() {
    var a = calculateDate("reservation10", reservation10start, reservation10end);
    reservation10start = a[0];
    reservation10end = a[1];
}
function date12() {
    var a = calculateDate("reservation11", reservation11start, reservation11end);
    reservation11start = a[0];
    reservation11end = a[1];
}
function date13() {
    var a = calculateDate("reservation12", reservation12start, reservation12end);
    reservation12start = a[0];
    reservation12end = a[1];
}
function date14() {
    var a = calculateDate("reservation13", reservation13start, reservation13end);
    reservation13start = a[0];
    reservation13end = a[1];
}
function date15() {
    var a = calculateDate("reservation14", reservation14start, reservation14end);
    reservation14start = a[0];
    reservation14end = a[1];
}
function date16() {
    var a = calculateDate("reservation15", reservation15start, reservation15end);
    reservation15start = a[0];
    reservation15end = a[1];
}
function date17() {
    var a = calculateDate("reservation16", reservation16start, reservation16end);
    reservation16start = a[0];
    reservation16end = a[1];
}
function calculateDate(a, b, c) {
    var tempProjectDate = $("#" + a).val();
    var tempProjectDate2 = tempProjectDate.split("-");
    var tempStartPackageDate = tempProjectDate2[0]; // 01/15/2016
    var tempStartPackageDate2 = tempStartPackageDate.split("/");
    var tempStartPackageDay = tempStartPackageDate2[1]; // 15
    var tempStartPackageMonth = tempStartPackageDate2[0]; // 01
    var tempStartPackageYear = tempStartPackageDate2[2]; // 2016

    var tempEndPackageDate = tempProjectDate2[1];   // 02/25/2016
    var tempEndPackageDate2 = tempEndPackageDate.split("/");
    var tempEndPackageMonth = tempEndPackageDate2[0]; // 02
    var tempEndPackageDay = tempEndPackageDate2[1]; // 15
    var tempEndPackageYear = tempEndPackageDate2[2]; // 2016
    var packageMonthDiff = 1 + monthDiff(new Date(tempStartPackageYear, tempStartPackageMonth, tempStartPackageDay),
            new Date(tempEndPackageYear, tempEndPackageMonth, tempEndPackageDay));
    if (tempStartPackageYear !== tempStartProjectYear) {
        var dif = tempStartPackageYear - tempStartProjectYear;
        dif = +dif * 12;
        tempStartPackageMonth = +tempStartPackageMonth + +dif;
    }
    b = tempStartPackageMonth - tempStartProjectMonth;
    c = packageMonthDiff + b;
    var values = [b, c];
    return values;
}

$(document).ready(function () {
    ko.applyBindings(viewModel()), date(), date2(), date3(), date4(), date5(), date6(), date7(), date8(), date9(), date10(), date11(), date12(), date13(), date14(), date15(), date16(), date17(), init_daterangepicker_reservation1(), init_daterangepicker_reservation2(), init_daterangepicker_reservation3(), init_daterangepicker_reservation4(), init_daterangepicker_reservation5(), init_daterangepicker_reservation6(), init_daterangepicker_reservation7(), init_daterangepicker_reservation8(), init_daterangepicker_reservation9(), init_daterangepicker_reservation10(), init_daterangepicker_reservation11(), init_daterangepicker_reservation12(), init_daterangepicker_reservation13(), init_daterangepicker_reservation14(), init_daterangepicker_reservation15(), init_daterangepicker_reservation16(), init_daterangepicker_reservation()
});