//---//---//---//---//---//---//---//---//---//---//
// La video tienda que presta sus servicios de alquiler de pel�culas a los usuarios del barrio el Porvenir, requiere de una aplicaci�n que permita registrar el alquiler de las pel�culas que adquieren sus usuarios.
// Para cada usuario se debe permitir la opci�n de alquilar pel�cula, consultar pel�culas disponibles y recibir pel�cula en la video tienda con la opci�n de realizar anotaciones sobre estas si se llegan a presentar da�os u otra novedad sobre la pel�cula.
//---//---//---//---//---//---//---//---//---//---//
SubProceso Alquilar( IDs, Peliculas )
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	Definir ID Como Entero;
	Definir Bandera Como Logico;
	
	Definir i Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Mostrar las opciones disponibles
	Escribir "ID de la pel�cula a alquilar";
	leer ID;
	
	Bandera <- Falso;
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		si no Bandera & ID == IDs[ i ] Entonces
			Bandera <- Verdadero;
			Escribir "Se alquil� la pel�cula ", Peliculas[ i ];
		FinSi
	FinPara
	
	si no Bandera Entonces
		Escribir "ID invalido";
	FinSi
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso Disponibles( IDs, Peliculas )
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	Definir i Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Mostrar las opciones disponibles
	Escribir "Pel�culas disponibles";
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		Escribir "ID: ", IDs[ i ],"    ", "Nombre de la pel�cula: ", Peliculas[ i ];
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso Devolucion( IDs, Peliculas )
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	Definir ID Como Entero;
	Definir Bandera Como Logico;
	Definir Novedad Como Caracter;
	
	Definir i Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Mostrar las opciones disponibles
	Escribir "ID de la pel�cula a devolver";
	leer ID;
	
	Bandera <- Falso;
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		si no Bandera & ID == IDs[ i ] Entonces
			Bandera <- Verdadero;
			Escribir "Se est� devolviendo la pel�cula ", Peliculas[ i ];
			Escribir "�La pelicula tiene alguna novedad?";
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
	// Definici�n de variables
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
		Peliculas[ i ] <- Concatenar( ":: Pel�cula ", Peliculas[ i ] );
		Peliculas[ i ] <- Concatenar( Peliculas[ i ], " ::" );
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
	// Mostrar las opciones disponibles
	Escribir " -> Men� <- ";
	Escribir "1. Alquilar pel�cula";
	Escribir "2. Consultar pel�culas disponibles";
	Escribir "3. Recibir pel�cula";
	Escribir "Por favor, seleccione la opci�n deseada";
	Leer Ignorar;
	
	// Identificarl al selecci�n
	Opcion <- 0;
	si Ignorar == "1" Entonces Opcion <- 1; FinSi
	si Ignorar == "2" Entonces Opcion <- 2; FinSi
	si Ignorar == "3" Entonces Opcion <- 3; FinSi
	
	// Identificar la opci�n selecionada
	Segun Opcion Hacer
		1: Alquilar( IDs, Peliculas );
		2: Disponibles( IDs, Peliculas );
		3: Devolucion( IDs, Peliculas );
		De Otro Modo:
			Escribir "Opci�n invalida";
	FinSegun
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
