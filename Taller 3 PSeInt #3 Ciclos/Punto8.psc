//---//---//---//---//---//---//---//---//---//---//
// La escuela automovil�stica "El Maestro" requiere una aplicaci�n que permita registrar a sus clientes en los cursos de ense�anza automovil�stica y establecer quienes lo han aprobado para continuar con el tr�mite de adquirir la licencia de conducci�n.
// Para cada usuario se debe permitir registrar su ingreso al curso, consultar usuarios que hayan presentado el curso y resultados de la prueba del curso (si fueron aprobados o no).
// Recuerde que el sistema debe terminar cuando el usuario as� lo indique.
// Tenga presente que la escuela tiene capacidad m�xima de gestionar 8 usuarios en su totalidad.
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto8
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	Definir Opcion Como Entero;
	Definir Ignorar Como Cadena;
	Definir Bandera Como Logico;
	
	Definir Indice Como Entero;
	Definir Nombre Como Caracter;
	Definir Evaluacion Como Logico;
	
	Definir Nombre1 Como Caracter;
	Definir Evaluacion1 Como Logico;
	
	Definir Nombre2 Como Caracter;
	Definir Evaluacion2 Como Logico;
	
	Definir Nombre3 Como Caracter;
	Definir Evaluacion3 Como Logico;
	
	Definir Nombre4 Como Caracter;
	Definir Evaluacion4 Como Logico;
	
	Definir Nombre5 Como Caracter;
	Definir Evaluacion5 Como Logico;
	
	Definir Nombre6 Como Caracter;
	Definir Evaluacion6 Como Logico;
	
	Definir Nombre7 Como Caracter;
	Definir Evaluacion7 Como Logico;
	
	Definir Nombre8 Como Caracter;
	Definir Evaluacion8 Como Logico;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Indice <- 0;
	
	Nombre1 <- "";
	Evaluacion1 <- Falso;
	
	Nombre2 <- "";
	Evaluacion2 <- Falso;
	
	Nombre3 <- "";
	Evaluacion3 <- Falso;
	
	Nombre4 <- "";
	Evaluacion4 <- Falso;
	
	Nombre5 <- "";
	Evaluacion5 <- Falso;
	
	Nombre6 <- "";
	Evaluacion6 <- Falso;
	
	Nombre7 <- "";
	Evaluacion7 <- Falso;
	
	Nombre8 <- "";
	Evaluacion8 <- Falso;
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de informaci�n
	Repetir
		Limpiar Pantalla;
		
		Escribir " -> Men� <-";
		Escribir "1. Registrar el usuario";
		Escribir "2. Resultados de la prueba del curso";
		Escribir "3. Consultar el usuario";
		Escribir "4. Salir";
		Escribir "Por favor, seleccione la opci�n deseada";
		Leer Opcion;
		
		Segun Opcion Hacer
			1:
				Escribir "Presione ENTER para continuar.";
				leer Ignorar;
			2:
				Escribir "Presione ENTER para continuar.";
				leer Ignorar;
			3:
				Escribir "Presione ENTER para continuar.";
				leer Ignorar;
		FinSegun
	Hasta Que Opcion == 4;
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
