//---//---//---//---//---//---//---//---//---//---//
// La escuela automovil�stica "El Maestro" requiere una aplicaci�n que permita registrar a sus clientes en los cursos de ense�anza automovil�stica y establecer quienes lo han aprobado para continuar con el tr�mite de adquirir la licencia de conducci�n.
// Para cada usuario se debe permitir registrar su ingreso al curso, consultar usuarios que hayan presentado el curso y resultados de la prueba del curso (si fueron aprobados o no).
// Recuerde que el sistema debe terminar cuando el usuario as� lo indique.
// Tenga presente que la escuela tiene capacidad m�xima de gestionar 8 usuarios en su totalidad.
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto8
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de informaci�n
	Repetir
		Limpiar Pantalla;
		
		Escribir " -> Men� <-";
		Escribir "1. Ingresar";
		Escribir "2. Retirar";
		Escribir "3. Consultar";
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
