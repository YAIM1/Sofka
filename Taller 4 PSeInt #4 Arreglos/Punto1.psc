//---//---//---//---//---//---//---//---//---//---//
// Crear un vector de tipo Entero con 5 posiciones, llenarlo con informaci�n solicitada al usuario.
// Despu�s de recoger toda la informaci�n, se requiere imprimir el �ndice de cada posici�n en el arreglo con su valor de la siguiente manera:
// [0] = 55
// [1] = 99
// [2] = 11
// [3] = 56
// [4] = 69
//---//---//---//---//---//---//---//---//---//---//
SubProceso Registrar( Arreglo )
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	Definir i Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "Por favor, ingrese el ", i, " valor";
		Leer Arreglo[ i ];
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso Mostrar( Arreglo )
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	Definir i Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de informaci�n
	Escribir "";
	Escribir "Valores ingresados";
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "[ ", i, " ] = ", Arreglo[ i ];
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

Proceso Punto1
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	Definir Arreglo Como Entero;
	Dimension Arreglo[ 5 ];
	//---//---//---//---//---//---//---//---//---//---//
	Registrar( Arreglo );
	Mostrar( Arreglo );
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
