//---//---//---//---//---//---//---//---//---//---//
// Se requiere un programa que pueda crear la tabla de multiplicar del número que el usuario indique por medio del ciclo Para; esta debe ser impresa del 1 al 10.
// Ejemplo, si el usuario indica que desea crear la tabla del 5, entonces el resultado debería ser el siguiente:
// 1 x 5 = 5
// 2 x 5 = 10
// 3 x 5 = 15
// 4 x 5 = 20
// 5 x 5 = 25
// 6 x 5 = 30
// 7 x 5 = 35
// 8 x 5 = 40
// 9 x 5 = 45
// 10 x 5 = 50
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto4
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir i Como Entero;
	Definir n Como Entero;
	Definir Resultado Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor, digite el numero de la tabla de multiplicar que desea generar";
	Leer n;
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de información
	Para i <- 1 Hasta 10 Con Paso 1 Hacer
		Escribir i, " x ", n, " = ", ( i * n );
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
