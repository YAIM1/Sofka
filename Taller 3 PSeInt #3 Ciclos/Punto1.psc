//---//---//---//---//---//---//---//---//---//---//
// Realizar la siguiente figura por medio del ciclo Para
// *
// **
// ***
// ****
// *****
// ******
// *******
// ********
// *********
// **********
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto1
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir i Como Entero;
	Definir j Como Entero;
	Definir Str Como Cadena;
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de información
	Para i <- 1 Hasta 10 Con Paso 1 Hacer
		Str <- "";
		
		Para j <- 1 Hasta i Con Paso 1 Hacer
			Str <- Concatenar( Str, "*" );
		FinPara
		
		Escribir  Str;
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
