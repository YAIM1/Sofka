//---//---//---//---//---//---//---//---//---//---//
// Crear un arreglo de n�meros enteros de 20 posiciones, el cual, debe ser llenado con n�meros aleatorios entre 1 y 100; despu�s de haber llenado dicho arreglo, se debe volver a recorrer utilizando un ciclo diferente al que se us� para llenarse e imprimir los n�meros pares e impares.
// Ejemplo
// N�meros pares: 2, 4, 6, 8, 10
// N�meros impares: 1, 3, 5, 7, 9
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto2
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	Definir Arreglo Como Entero;
	Dimension Arreglo[ 20 ];
	
	Definir i Como Entero;
	Definir Contador Como Entero;
	Definir Resultado Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Para i <- 0 Hasta 19 Con Paso 1 Hacer
		Arreglo[ i ] <- Aleatorio( 1, 100 );
	FinPara
	
	Resultado <- "";
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de informaci�n
	i <- 0;
	Contador <- 0;
	Resultado <- "pares:";
	Repetir
		si Arreglo[ i ] mod 2 == 0 Entonces
			si Contador > 0 Entonces
				Resultado <- Concatenar( Resultado, "," );
			FinSi
			Contador <- Contador + 1;
			Resultado <- Concatenar( Resultado, " " );
			Resultado <- Concatenar( Resultado, ConvertirATexto( Arreglo[ i ] ) );
		FinSi
		i <- i + 1;
	Hasta Que i >= 20;
	Escribir Resultado;
	
	i <- 0;
	Contador <- 0;
	Resultado <- "impares:";
	Repetir
		si Arreglo[ i ] mod 2 == 1 Entonces
			si Contador > 0 Entonces
				Resultado <- Concatenar( Resultado, "," );
			FinSi
			Contador <- Contador + 1;
			Resultado <- Concatenar( Resultado, " " );
			Resultado <- Concatenar( Resultado, ConvertirATexto( Arreglo[ i ] ) );
		FinSi
		i <- i + 1;
	Hasta Que i >= 20;
	Escribir Resultado;
//---//---//---//---//---//---//---//---//---//---//
FinProceso
