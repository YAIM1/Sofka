//---//---//---//---//---//---//---//---//---//---//
// Realizar un programa en el cual se solicite la edad de una persona.
// Si la persona es mayor o igual a 18 a�os, deber� mostrar en pantalla: Usted es mayor de edad.
//---//---//---//---//---//---//---//---//---//---//
SubProceso EdadOut <- ValidarEdad( EdadIn )
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	Definir EdadOut Como Cadena;
	//---//---//---//---//---//---//---//---//---//---//
	si EdadIn > 17 Entonces
		EdadOut <- "Usted es mayor de edad.";
	FinSi
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

Proceso Punto1
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	Definir Edad Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor, escriba sus edad (en A�os)";
	Leer Edad;
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de informaci�n
	Escribir ValidarEdad( Edad );
	//---//---//---//---//---//---//---//---//---//---//
FinProceso