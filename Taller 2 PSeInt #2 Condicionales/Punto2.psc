//---//---//---//---//---//---//---//---//---//---//
// Realizar un programa en el cual se solicite la edad de una persona.
// Si la persona es menor a 18 a�os, deber� mostrar en pantalla: Usted a�n es un ni�o(a).
//---//---//---//---//---//---//---//---//---//---//
SubProceso ValidarEdad( Edad )
	si Edad < 18 Entonces
		Escribir "Usted a�n es un ni�o(a).";
	FinSi
FinSubProceso

Proceso Punto2
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	Definir Edad Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor, escriba sus edad (en A�os)";
	Leer Edad;
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de informaci�n
	ValidarEdad( Edad );
	//---//---//---//---//---//---//---//---//---//---//
FinProceso