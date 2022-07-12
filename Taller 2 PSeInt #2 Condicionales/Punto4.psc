//---//---//---//---//---//---//---//---//---//---//
// La video tienda que presta sus servicios de alquiler de películas a los usuarios del barrio el Porvenir, requiere de una aplicación que permita registrar el alquiler de las películas que adquieren sus usuarios.
// Para cada usuario se debe permitir la opción de alquilar película, consultar películas disponibles y recibir película en la video tienda con la opción de realizar anotaciones sobre estas si se llegan a presentar daños u otra novedad sobre la película.
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto4
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Opcion Como Entero;
	Definir Novedad Como Caracter;

	Definir IDPelicula1 Como Entero;
	Definir IDPelicula2 Como Entero;
	Definir IDPelicula3 Como Entero;

	Definir NombrePelicula1 Como Caracter;
	Definir NombrePelicula2 Como Caracter;
	Definir NombrePelicula3 Como Caracter;

	Definir ID Como Entero;
	Definir Bandera Como Logico;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	IDPelicula1 <- 1;
	NombrePelicula1 <- "P1";
	
	IDPelicula2 <- 2;
	NombrePelicula2 <- "P2";
	
	IDPelicula3 <- 3;
	NombrePelicula3 <- "P3";
	
	Bandera <- Falso;
	//---//---//---//---//---//---//---//---//---//---//
	// Mostrar las opciones disponibles
	Escribir " -> Menú <- ";
	Escribir "1. Alquilar película";
	Escribir "2. Consultar películas disponibles";
	Escribir "3. Recibir película";
	Escribir "Por favor, seleccione la opción deseada";
	Leer Opcion;
	
	// Identificar la opción selecionada
	Segun Opcion Hacer
		1:
			Escribir "ID de la película a alquilar";
			leer ID;
			
			si no Bandera & ID == IDPelicula1 Entonces
				Bandera <- Verdadero;
				Escribir "Se alquiló la película ", NombrePelicula1;
			FinSi
			
			si no Bandera & ID == IDPelicula2 Entonces
				Bandera <- Verdadero;
				Escribir "Se alquiló la película ", NombrePelicula2;
			FinSi
			
			si no Bandera & ID == IDPelicula3 Entonces
				Bandera <- Verdadero;
				Escribir "Se alquiló la película ", NombrePelicula3;
			FinSi
			
			si no Bandera Entonces
				Escribir "ID invalido";
			FinSi
		2:
			Escribir "Películas disponibles";
			Escribir "ID: ", IDPelicula1,"    ", "Películas: ", NombrePelicula1;
			Escribir "ID: ", IDPelicula2,"    ", "Películas: ", NombrePelicula2;
			Escribir "ID: ", IDPelicula3,"    ", "Películas: ", NombrePelicula3;
		3:
			Escribir "La pelicula tiene alguna novedad:";
			Leer Novedad;
		De Otro Modo:
			Escribir "Opción invalida";
	FinSegun
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
