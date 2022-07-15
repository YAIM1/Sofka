//---//---//---//---//---//---//---//---//---//---//
// Realizar un programa en el cual se solicite la edad de una persona.
// Si la persona es menor a 18 años, deberá mostrar en pantalla: Usted aún es un niño(a).
//---//---//---//---//---//---//---//---//---//---//
SubProceso ValidarEdad( Edad )
	si Edad < 18 Entonces
		Escribir "Usted aún es un niño(a).";
	FinSi
FinSubProceso

Proceso Punto2
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Edad Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor, escriba sus edad (en Años)";
	Leer Edad;
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de información
	ValidarEdad( Edad );
	//---//---//---//---//---//---//---//---//---//---//
FinProceso