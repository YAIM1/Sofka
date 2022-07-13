//---//---//---//---//---//---//---//---//---//---//
// Realizar la siguiente figura por medio del ciclo Mientras - Hacer
//          *
//         **
//        ***
//       ****
//      *****
//     ******
//    *******
//   ********
//  *********
// **********
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto2
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir i Como Entero;
	Definir j Como Entero;
	Definir Str Como Cadena;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	i <- 1;
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de información
	Mientras i <= 10 Hacer
		Str <- "";
		
		j <- 1;
		Mientras j <= ( 10 - i ) Hacer
			Str <- Concatenar( Str, " " );
			j <- j + 1;
		FinMientras
		
		j <- 1;
		Mientras j <= i Hacer
			Str <- Concatenar( Str, "*" );
			j <- j + 1;
		FinMientras
		
		i <- i + 1;
		Escribir  Str;
	FinMientras
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
