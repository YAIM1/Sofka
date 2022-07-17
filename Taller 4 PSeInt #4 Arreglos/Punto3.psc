//---//---//---//---//---//---//---//---//---//---//
// Imprimir los números primos del 1 al 1000, el resultado debe ser buscado de forma matemática.
//---//---//---//---//---//---//---//---//---//---//
SubProceso Devolver <- Primos( Maximo )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir i Como Entero;
	Definir j Como Entero;
	
	Definir Contador Como Entero;
	Definir Divisible Como Entero;
	Definir Resultado Como Caracter;
	
	Definir Devolver Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Contador <- 0;
	Resultado <- "";
	Resultado <- Concatenar( Resultado, "Números primos del 1 al " );
	Resultado <- Concatenar( Resultado, ConvertirATexto( Maximo ) );
	Resultado <- Concatenar( Resultado, ":" );
	Para i <- 1 Hasta Maximo Con Paso 1 Hacer
		Divisible <- 0;
		Para j <- 1 Hasta i Con Paso 1 Hacer
			si i mod j == 0 Entonces
				Divisible <- Divisible + 1;
			FinSi
		FinPara
		si Divisible <= 2 Entonces
			si Contador > 0 Entonces
				Resultado <- Concatenar( Resultado, "," );
			FinSi
			Contador <- Contador + 1;
			Resultado <- Concatenar( Resultado, " " );
			Resultado <- Concatenar( Resultado, ConvertirATexto( i ) );
		FinSi
	FinPara
	Escribir Resultado;
	Devolver <- Resultado;
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

Proceso Punto3
	Escribir Primos( 1000 );
FinProceso
