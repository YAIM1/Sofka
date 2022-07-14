//---//---//---//---//---//---//---//---//---//---//
// Se debe de imprimir el siguiente cuadro
//
//                  C O L U M N A S
//       0    1    2    3    4    5    6    7    8     9
//   0  1x1  2x1  3x1  4x1  5x1  6x1  7x1  8x1  9x1  10x1
//   1  1x2  2x2  3x2  4x2  5x2  6x2  7x2  8x2  9x2  10x2
//   2  1x3  2x3  3x3  4x3  5x3  6x3  7x3  8x3  9x3  10x3
// F 3  1x4  2x4  3x4  4x4  5x4  6x4  7x4  8x4  9x4  10x4
// I 4  1x5  2x5  3x5  4x5  5x5  6x5  7x5  8x5  9x5  10x5
// L 5  1x6  2x6  3x6  4x6  5x6  6x6  7x6  8x6  9x6  10x6
// A 6  1x7  2x7  3x7  4x7  5x7  6x7  7x7  8x7  9x7  10x7
// S 7  1x8  2x8  3x8  4x8  5x8  6x8  7x8  8x8  9x8  10x8
//   8  1x9  2x9  3x9  4x9  5x9  6x9  7x9  8x9  9x9  10x9
//   9  1x10 2x10 3x10 4x10 5x10 6x10 7x10 8x10 9x10 10x10
//
// El usuario deberá insertar la fila y columna de la cual desea ver el resultado, el resultado de cada celda debe estar previamente calculado en una matriz bidimensional la cual cada resultado obedecerá a la fila y columna insertada por el usuario.
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto5
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Fila Como Entero;
	Definir Columna Como Entero;
	
	Definir Arreglo Como Entero;
	Dimension Arreglo[ 10, 10 ];
	
	Definir Etiqueta Como Caracter;
	Dimension Etiqueta[ 10 ];
	
	Definir Resultado Como Caracter;	
	
	Definir Opcion Como Entero;
	Definir Ignorar Como Caracter;

	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Para Fila <- 0 Hasta 9 Con Paso 1 Hacer
		Etiqueta[ Fila ] <- " ";
		Para Columna <- 0 Hasta 9 Con Paso 1 Hacer
			Arreglo[ Fila, Columna ] <- ( Fila + 1) * ( 1 + Columna );
		FinPara
	FinPara
	
	Etiqueta[ 3 ] <- "F";
	Etiqueta[ 4 ] <- "I";
	Etiqueta[ 5 ] <- "L";
	Etiqueta[ 6 ] <- "A";
	Etiqueta[ 7 ] <- "S";
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de información
	Escribir  "                 C O L U M N A S";
	Resultado <- "  ";
	Para Fila <- 0 Hasta 9 Con Paso 1 Hacer
		Resultado <- Concatenar( Resultado, "    " );
		Resultado <- Concatenar( Resultado, ConvertirATexto( Fila ) );
	FinPara
	Escribir Resultado;
	
	Para Fila <- 0 Hasta 9 Con Paso 1 Hacer
		Resultado <- "";
		Resultado <- Concatenar( Resultado, Etiqueta[ Fila ] );
		Resultado <- Concatenar( Resultado, " " );
		Resultado <- Concatenar( Resultado, ConvertirATexto( Fila ) );
		Resultado <- Concatenar( Resultado, " " );
		si Fila < 9 Entonces
			Resultado <- Concatenar( Resultado, " " );
		FinSi
		Para Columna <- 0 Hasta 9 Con Paso 1 Hacer
			Resultado <- Concatenar( Resultado, ConvertirATexto( Fila + 1 ) );
			Resultado <- Concatenar( Resultado, "x" );
			Resultado <- Concatenar( Resultado, ConvertirATexto( Columna + 1 ) );
			Resultado <- Concatenar( Resultado, " " );
			si Fila < 9 Entonces
				Resultado <- Concatenar( Resultado, " " );
			FinSi
		FinPara
		Escribir Resultado;
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Repetir
		Opcion <- 10;
		Repetir
			Escribir "Por favor, ingrese la fila";
			Leer Ignorar;
			
			// Identificar el valor digitado
			si Ignorar == "0" Entonces Opcion <- 0; FinSi
			si Ignorar == "1" Entonces Opcion <- 1; FinSi
			si Ignorar == "2" Entonces Opcion <- 2; FinSi
			si Ignorar == "3" Entonces Opcion <- 3; FinSi
			si Ignorar == "4" Entonces Opcion <- 4; FinSi
			si Ignorar == "5" Entonces Opcion <- 5; FinSi
			si Ignorar == "6" Entonces Opcion <- 6; FinSi
			si Ignorar == "7" Entonces Opcion <- 7; FinSi
			si Ignorar == "8" Entonces Opcion <- 8; FinSi
			si Ignorar == "9" Entonces Opcion <- 9; FinSi
		Hasta Que Opcion < 10;
		Fila <- Opcion;
		
		Opcion <- 10;
		Repetir
			Escribir "Por favor, ingrese la columna";
			Leer Ignorar;
			
			// Identificar el valor digitado
			si Ignorar == "0" Entonces Opcion <- 0; FinSi
			si Ignorar == "1" Entonces Opcion <- 1; FinSi
			si Ignorar == "2" Entonces Opcion <- 2; FinSi
			si Ignorar == "3" Entonces Opcion <- 3; FinSi
			si Ignorar == "4" Entonces Opcion <- 4; FinSi
			si Ignorar == "5" Entonces Opcion <- 5; FinSi
			si Ignorar == "6" Entonces Opcion <- 6; FinSi
			si Ignorar == "7" Entonces Opcion <- 7; FinSi
			si Ignorar == "8" Entonces Opcion <- 8; FinSi
			si Ignorar == "9" Entonces Opcion <- 9; FinSi
		Hasta Que Opcion < 10;
		Columna <- Opcion;
		
		// Salida de información
		Escribir "[ ", Fila, ", ", Columna, " ] = ", Arreglo[ Fila, Columna ];
		
		Repetir
			Escribir "¿Desea finalizar el programa?";
			Leer Ignorar;
		Hasta Que Ignorar == "S" | Ignorar == "s" |  Ignorar == "N" | Ignorar == "n";
	Hasta Que Ignorar == "S" | Ignorar == "s";
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
