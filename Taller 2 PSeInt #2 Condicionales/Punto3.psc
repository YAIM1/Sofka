//---//---//---//---//---//---//---//---//---//---//
// Realizar un programa en el cual se solicite el nombre, apellidos y edad de la persona.
// Si la persona es mayor o igual a 18 a�os, entonce se deber� imprimir en pantalla [Nombre completo] usted es mayor de edad, por lo tanto puede entrar a la fiesta.
// Si la edad de la persona es menor que 18 a�os, entonces, deber� imprimirse el siguiente mensaje: [Nombre completo] usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devu�lvase a su casa.
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto3
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	Definir Nombre Como Caracter;
	Definir Apellidos como Caracter;
	Definir Edad Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor, escriba sus nombres";
	Leer Nombre;
	
	Escribir "Por favor, escriba sus apellidos";
	Leer Apellidos;
	
	Escribir "Por favor, escriba sus edad (en A�os)";
	Leer Edad;
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de informaci�n
	si Edad > 17 Entonces
		Escribir Nombre, " ", Apellidos, ", usted es mayor de edad, por lo tanto puede entrar a la fiesta.";
	FinSi
	
	si Edad < 18 Entonces
		Escribir Nombre, " ", Apellidos, ", usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devu�lvase a su casa.";
	FinSi
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
