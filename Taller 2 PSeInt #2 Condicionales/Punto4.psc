//---//---//---//---//---//---//---//---//---//---//
// La video tienda que presta sus servicios de alquiler de películas a los usuarios del barrio el Porvenir, requiere de una aplicación que permita registrar el alquiler de las películas que adquieren sus usuarios.
// Para cada usuario se debe permitir la opción de alquilar película, consultar películas disponibles y recibir película en la video tienda con la opción de realizar anotaciones sobre estas si se llegan a presentar daños u otra novedad sobre la película.
//---//---//---//---//---//---//---//---//---//---//
SubProceso Alquilar( IDs, Peliculas )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir ID Como Entero;
	Definir Bandera Como Logico;
	
	Definir i Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Mostrar las opciones disponibles
	Escribir "ID de la película a alquilar";
	leer ID;
	
	Bandera <- Falso;
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		si no Bandera & ID == IDs[ i ] Entonces
			Bandera <- Verdadero;
			Escribir "Se alquiló la película ", Peliculas[ i ];
		FinSi
	FinPara
	
	si no Bandera Entonces
		Escribir "ID invalido";
	FinSi
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso Disponibles( IDs, Peliculas )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir i Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Mostrar las opciones disponibles
	Escribir "Películas disponibles";
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		Escribir "ID: ", IDs[ i ],"    ", "Nombre de la película: ", Peliculas[ i ];
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso Devolucion( IDs, Peliculas )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir ID Como Entero;
	Definir Bandera Como Logico;
	Definir Novedad Como Caracter;
	
	Definir i Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Mostrar las opciones disponibles
	Escribir "ID de la película a devolver";
	leer ID;
	
	Bandera <- Falso;
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		si no Bandera & ID == IDs[ i ] Entonces
			Bandera <- Verdadero;
			Escribir "Se está devolviendo la película ", Peliculas[ i ];
			Escribir "¿La pelicula tiene alguna novedad?";
			Leer Novedad;
		FinSi
	FinPara
	
	si no Bandera Entonces
		Escribir "ID invalido";
	FinSi
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

Proceso Punto4
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Opcion Como Entero;
	Definir Ignorar Como Caracter;
	
	Definir IDs Como Entero;
	Definir Peliculas Como Caracter;

	Dimension IDs[ 10 ]	;
	Dimension Peliculas[ 10 ];
	
	Definir i Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		IDs[ i ] <- i;
		Peliculas[ i ] <- ConvertirATexto( i );
		Peliculas[ i ] <- Concatenar( ":: Película ", Peliculas[ i ] );
		Peliculas[ i ] <- Concatenar( Peliculas[ i ], " ::" );
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
	// Mostrar las opciones disponibles
	Escribir " -> Menú <- ";
	Escribir "1. Alquilar película";
	Escribir "2. Consultar películas disponibles";
	Escribir "3. Recibir película";
	Escribir "Por favor, seleccione la opción deseada";
	Leer Ignorar;
	
	// Identificarl al selección
	Opcion <- 0;
	si Ignorar == "1" Entonces Opcion <- 1; FinSi
	si Ignorar == "2" Entonces Opcion <- 2; FinSi
	si Ignorar == "3" Entonces Opcion <- 3; FinSi
	
	// Identificar la opción selecionada
	Segun Opcion Hacer
		1: Alquilar( IDs, Peliculas );
		2: Disponibles( IDs, Peliculas );
		3: Devolucion( IDs, Peliculas );
		De Otro Modo:
			Escribir "Opción invalida";
	FinSegun
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
