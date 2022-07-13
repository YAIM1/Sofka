//---//---//---//---//---//---//---//---//---//---//
// Realizar la siguiente figura por medio del ciclo Repetir - Hasta Que
//           *
//          ***
//         *****
//        *******
//       *********
//      ***********
//     *************
//    ***************
//   *****************
//  *******************
// *********************
//          ***
//          ***
//         *****
//        *******
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto3
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir i Como Entero;
	Definir j Como Entero;
	Definir k Como Entero;
	Definir Str Como Cadena;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	i <- 0;
	k <- 0;
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de información
	Repetir
		Str <- "";
		
		j <- 0;
		Repetir
			j <- j + 1;
			Str <- Concatenar( Str, " " );
		Hasta Que j > ( 11 - i )
		
		j <- 0;
		Repetir
			j <- j + 1;
			Str <- Concatenar( Str, "*" );
		Hasta Que j == i * 2 + 1
		
		i <- i + 1;
		k <- k + 1;
		
		Si k == 12 | k == 13 Entonces
			i <- 1;
		FinSi
		
		Escribir  Str;
	Hasta Que k == 16
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
