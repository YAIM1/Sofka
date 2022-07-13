//---//---//---//---//---//---//---//---//---//---//
// La escuela automovilística "El Maestro" requiere una aplicación que permita registrar a sus clientes en los cursos de enseñanza automovilística y establecer quienes lo han aprobado para continuar con el trámite de adquirir la licencia de conducción.
// Para cada usuario se debe permitir registrar su ingreso al curso, consultar usuarios que hayan presentado el curso y resultados de la prueba del curso (si fueron aprobados o no).
// Recuerde que el sistema debe terminar cuando el usuario así lo indique.
// Tenga presente que la escuela tiene capacidad máxima de gestionar 8 usuarios en su totalidad.
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto8
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de información
	Repetir
		Limpiar Pantalla;
		
		Escribir " -> Menú <-";
		Escribir "1. Ingresar";
		Escribir "2. Retirar";
		Escribir "3. Consultar";
		Escribir "4. Salir";
		Escribir "Por favor, seleccione la opción deseada";
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
