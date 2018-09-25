var solucion;
var num1;
var num2;

function suma() {
    num1 = document.getElementById("num1").value;
    num2 = document.getElementById("num2").value;
    solucion = parseFloat(num1) + parseFloat(num2);
    alert(num1 + "+" + num2 + "= " + solucion);
};

function resta() {
    num1 = document.getElementById("num1").value;
    num2 = document.getElementById("num2").value;
    solucion = num1 - num2;
    alert(num1 + "-" + num2 + "= " + solucion);
};

function multiplicacion() {
    num1 = document.getElementById("num1").value;
    num2 = document.getElementById("num2").value;
    solucion = num1 * num2;
    alert(num1 + "*" + num2 + "= " + solucion);
};

function division() {
    num1 = document.getElementById("num1").value;
    num2 = document.getElementById("num2").value;
    solucion = num1 / num2;
    alert(num1 + "/" + num2 + "= " + solucion);
};
