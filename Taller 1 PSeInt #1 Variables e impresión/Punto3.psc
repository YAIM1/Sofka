//---//---//---//---//---//---//---//---//---//---//
// Realizar un programa el cual solicite su nombre y apellidos, también debe capturar nombre y apellidos de su padre y madre.
// Al finalizar debe imprimir en pantalla el siguiente mensaje "Yo [Nombre Completo], soy hijo de [Nombre de la Madre] y [Nombre del Padre].
//---//---//---//---//---//---//---//---//---//---//
Algoritmo Punto3
	//---//---//---//---//---//---//---//---//---//---//	
	// Definición de variables
	Definir Nombre Como Caracter;
	Definir Apellidos como Caracter;
	Definir NombreMadre Como Caracter;
	Definir NombrePadre Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor escriba sus nombres:";
	Leer Nombre;
	
	Escribir "Por favor escriba sus apellidos:";
	Leer Apellidos;
	
	Escribir "Por favor escriba los nombres de su madre:";
	Leer NombreMadre;
	
	Escribir "Por favor escriba los nombres de su padre:";
	Leer NombrePadre;
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de información
	Limpiar Pantalla;
	Escribir "Yo ", Nombre, " ", Apellidos, ", soy hijo de ", NombreMadre, " y ", NombrePadre,".";
	//---//---//---//---//---//---//---//---//---//---//
FinAlgoritmo
