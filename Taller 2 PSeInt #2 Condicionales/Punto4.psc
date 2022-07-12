//---//---//---//---//---//---//---//---//---//---//
// La video tienda que presta sus servicios de alquiler de pel�culas a los usuarios del barrio el Porvenir, requiere de una aplicaci�n que permita registrar el alquiler de las pel�culas que adquieren sus usuarios.
// Para cada usuario se debe permitir la opci�n de alquilar pel�cula, consultar pel�culas disponibles y recibir pel�cula en la video tienda con la opci�n de realizar anotaciones sobre estas si se llegan a presentar da�os u otra novedad sobre la pel�cula.
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto4
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
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
	Escribir " -> Men� <- ";
	Escribir "1. Alquilar pel�cula";
	Escribir "2. Consultar pel�culas disponibles";
	Escribir "3. Recibir pel�cula";
	Escribir "Por favor, seleccione la opci�n deseada";
	Leer Opcion;
	
	// Identificar la opci�n selecionada
	Segun Opcion Hacer
		1:
			Escribir "ID de la pel�cula a alquilar";
			leer ID;
			
			si no Bandera & ID == IDPelicula1 Entonces
				Bandera <- Verdadero;
				Escribir "Se alquil� la pel�cula ", NombrePelicula1;
			FinSi
			
			si no Bandera & ID == IDPelicula2 Entonces
				Bandera <- Verdadero;
				Escribir "Se alquil� la pel�cula ", NombrePelicula2;
			FinSi
			
			si no Bandera & ID == IDPelicula3 Entonces
				Bandera <- Verdadero;
				Escribir "Se alquil� la pel�cula ", NombrePelicula3;
			FinSi
			
			si no Bandera Entonces
				Escribir "ID invalido";
			FinSi
		2:
			Escribir "Pel�culas disponibles";
			Escribir "ID: ", IDPelicula1,"    ", "Pel�culas: ", NombrePelicula1;
			Escribir "ID: ", IDPelicula2,"    ", "Pel�culas: ", NombrePelicula2;
			Escribir "ID: ", IDPelicula3,"    ", "Pel�culas: ", NombrePelicula3;
		3:
			Escribir "La pelicula tiene alguna novedad:";
			Leer Novedad;
		De Otro Modo:
			Escribir "Opci�n invalida";
	FinSegun
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
