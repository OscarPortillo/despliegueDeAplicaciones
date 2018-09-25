var pincelActivado = false;
var colorSeleccionado;
window.onload = comienzo;

function comienzo() {
	crearTabla();

	// Seleccionamos el primer color por defecto. Cuando pulsemos en otro color cambiará
	document.getElementById("pincel").style.backgroundColor = "#FF0";
	colorSeleccionado = "#FF0";

	function crearTabla() {
		document.getElementById("zonadibujo").innerHTML = '<h3>Click para empezar a pintar y volver a hacer click para parar.</h3>';
		var x = document.createElement("TABLE");
		x.setAttribute("id", "tablerodibujo");
		x.setAttribute("class", "tablerodibujo");
		document.getElementById("zonadibujo").appendChild(x); //document.body.appendChild(x); //

		for (i = 0; i < 30; i++) {
			var y = document.createElement("TR");
			y.setAttribute("id", i);
			document.getElementById("tablerodibujo").appendChild(y);
			for (j = 0; j < 30; j++) {
				var z = document.createElement("TD");
				z.setAttribute("onmouseover", "pintar(this)");
				z.setAttribute("onclick", "pintaclick(this)");
				document.getElementById(i).appendChild(z);
			}
		}
	}

	// Ponemos un mensaje explicativo sobre la capa zonadibujo


	// asignamos el evento de click del ratón a cada uno de los colores de la paleta de colores. Cada color con su evento
	var arrayPincel1 = document.getElementsByClassName("color1");
	var arrayPincel2 = document.getElementsByClassName("color2");
	var arrayPincel3 = document.getElementsByClassName("color3");
	var arrayPincel4 = document.getElementsByClassName("color4");
	var arrayPincel5 = document.getElementsByClassName("color5");
	var arrayPincel6 = document.getElementsByClassName("color6");
	var pincel1 = arrayPincel1[0];
	var pincel2 = arrayPincel2[0];
	var pincel3 = arrayPincel3[0];
	var pincel4 = arrayPincel4[0];
	var pincel5 = arrayPincel5[0];
	var pincel6 = arrayPincel6[0];


	pincel1.addEventListener("click", function () {
		detectarColorPaleta(pincel1, "#FF0");
	});
	pincel2.addEventListener("click", function () {
		detectarColorPaleta(pincel2, "#0F0");
	});
	pincel3.addEventListener("click", function () {
		detectarColorPaleta(pincel3, "#000");
	});
	pincel4.addEventListener("click", function () {
		detectarColorPaleta(pincel4, "#F00");
	});
	pincel5.addEventListener("click", function () {
		detectarColorPaleta(pincel5, "#06C");
	});
	pincel6.addEventListener("click", function () {
		detectarColorPaleta(pincel6, "#FFF");
	});


	// Función que cambia el color según nuestra pulsación sobre los colores
	function detectarColorPaleta(pincel, color) {
		var arrayPincelSeleccionadoViejo = document.getElementsByClassName("seleccionado");
		var pincelSeleccionadoViejo = arrayPincelSeleccionadoViejo[0];
		var primeraClasePincelSeleccionadoViejo = pincelSeleccionadoViejo.className.substring(0, 6);
		pincelSeleccionadoViejo.className = primeraClasePincelSeleccionadoViejo;
		//alert(color);
		var nombreClase = pincel.className;
		pincel.className = nombreClase + " seleccionado";
		document.getElementById("pincel").style.backgroundColor = color;
		colorSeleccionado = color;
		//alert(colorSeleccionado);
		//alert(document.getElementById("pincel").style.backgroundColor);-------------------------------------------no me deja sacar el color
	}
	document.getElementById("tablerodibujo").addEventListener("click", function () {
		activarPintura();
	});

	function activarPintura() {
		if (pincelActivado == false) {
			document.getElementById("pincel").innerHTML = "PINCEL ACTIVADO";
			pincelActivado = true;
		} else {
			document.getElementById("pincel").innerHTML = "PINCEL DESACTIVADO";
			pincelActivado = false;
		}
	}

}

function pintar(elemento) {
	if (pincelActivado == true) {
		elemento.style.backgroundColor = colorSeleccionado;
	} else {}
}

function pintaclick(elemento) {
	elemento.style.backgroundColor = colorSeleccionado;
}
