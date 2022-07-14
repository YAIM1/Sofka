//---//---//---//---//---//---//---//---//---//---//
// Dada la siguiente matriz bidimensional, el cual debe de quemar en el código
// 01 02 03 04 05
// 06 07 08 09 10
// 11 12 13 14 15
// 16 17 18 19 20
// Utilizando el conocimiento adquirido, a excepción de hacerlo de forma manual, imprima la siguiente matriz bidimensional.
// 01 02 03 04 05
// 10 09 08 07 06
// 11 12 13 14 15
// 20 19 18 17 16
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto4
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Fila Como Entero;
	Definir Columna Como Entero;
	
	Definir Arreglo Como Entero;
	Dimension Arreglo[ 4, 5 ];
	
	Definir Resultado Como Caracter;	
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Para Fila <- 0 Hasta 3 Con Paso 1 Hacer
		Para Columna <- 0 Hasta 4 Con Paso 1 Hacer
			Arreglo[ Fila, Columna ] <- 5 * Fila + Columna + 1;
		FinPara
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de información
	Para Fila <- 0 Hasta 3 Con Paso 1 Hacer
		Resultado <- "";
		si Fila mod 2 == 0 Entonces
			Para Columna <- 0 Hasta 4 Con Paso 1 Hacer
				si Arreglo[ Fila, Columna ] <= 9 Entonces
					Resultado <- Concatenar( Resultado, "0" );
				FinSi
				Resultado <- Concatenar( Resultado, ConvertirATexto( Arreglo[ Fila, Columna ] ) );
				Resultado <- Concatenar( Resultado, " " );
			FinPara
		FinSi
		si Fila mod 2 == 1 Entonces
			Para Columna <- 4 Hasta 0 Con Paso -1 Hacer
				si Arreglo[ Fila, Columna ] <= 9 Entonces
					Resultado <- Concatenar( Resultado, "0" );
				FinSi
				Resultado <- Concatenar( Resultado, ConvertirATexto( Arreglo[ Fila, Columna ] ) );
				Resultado <- Concatenar( Resultado, " " );
			FinPara
		FinSi
		Escribir Resultado;
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
