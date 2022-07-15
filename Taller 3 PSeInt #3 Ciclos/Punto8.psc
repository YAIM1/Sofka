//---//---//---//---//---//---//---//---//---//---//
// La escuela automovilística "El Maestro" requiere una aplicación que permita registrar a sus clientes en los cursos de enseñanza automovilística y establecer quienes lo han aprobado para continuar con el trámite de adquirir la licencia de conducción.
// Para cada usuario se debe permitir registrar su ingreso al curso, consultar usuarios que hayan presentado el curso y resultados de la prueba del curso (si fueron aprobados o no).
// Recuerde que el sistema debe terminar cuando el usuario así lo indique.
// Tenga presente que la escuela tiene capacidad máxima de gestionar 8 usuarios en su totalidad.
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto8
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Opcion Como Entero;
	Definir Ignorar Como Cadena;
	Definir Bandera Como Logico;
	
	Definir Indice Como Entero;
	Definir Nombre Como Caracter;
	Definir Evaluacion Como Caracter;
	
	Definir Nombre1 Como Caracter;
	Definir Evaluacion1 Como Caracter;
	
	Definir Nombre2 Como Caracter;
	Definir Evaluacion2 Como Caracter;
	
	Definir Nombre3 Como Caracter;
	Definir Evaluacion3 Como Caracter;
	
	Definir Nombre4 Como Caracter;
	Definir Evaluacion4 Como Caracter;
	
	Definir Nombre5 Como Caracter;
	Definir Evaluacion5 Como Caracter;
	
	Definir Nombre6 Como Caracter;
	Definir Evaluacion6 Como Caracter;
	
	Definir Nombre7 Como Caracter;
	Definir Evaluacion7 Como Caracter;
	
	Definir Nombre8 Como Caracter;
	Definir Evaluacion8 Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Indice <- 0;
	
	Nombre1 <- "";
	Evaluacion1 <- "No";
	
	Nombre2 <- "";
	Evaluacion2 <- "No";
	
	Nombre3 <- "";
	Evaluacion3 <- "No";
	
	Nombre4 <- "";
	Evaluacion4 <- "No";
	
	Nombre5 <- "";
	Evaluacion5 <- "No";
	
	Nombre6 <- "";
	Evaluacion6 <- "No";
	
	Nombre7 <- "";
	Evaluacion7 <- "No";
	
	Nombre8 <- "";
	Evaluacion8 <- "No";
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de información
	Repetir
		Limpiar Pantalla;
		
		Escribir " -> Menú <-";
		Escribir "1. Registrar el usuario";
		Escribir "2. Resultados de la prueba del curso";
		Escribir "3. Consultar el usuario";
		Escribir "4. Salir";
		Escribir "Por favor, seleccione la opción deseada";
		Leer Opcion;
		
		Bandera <- Falso;
		Segun Opcion Hacer
			1:
				si Indice >= 8 Entonces
					Escribir "No hay espacio para otro cliente";
					Bandera <- Verdadero;
				FinSi
				
				si Indice < 8 Entonces
					Escribir "Por favor, ingrese el nombre del cliente";
					leer Nombre;
				FinSi
				
				
				si Nombre == "" Entonces
					Bandera <- Verdadero;
					Escribir "Debe escribir un nombre";
				FinSi				
				
				
				Bandera <- Bandera | Nombre == Nombre1;
				Bandera <- Bandera | Nombre == Nombre2;
				Bandera <- Bandera | Nombre == Nombre3;
				Bandera <- Bandera | Nombre == Nombre4;
				Bandera <- Bandera | Nombre == Nombre5;
				
				
				si Bandera & Indice < 8 & Nombre <> "" Entonces
					Escribir "Ese cliente ya está registrado";
				FinSi
				
				
				si no Bandera Entonces
					Indice <- Indice + 1;
					Escribir "Los datos han sido guardados";
				FinSi
				
				
				si no Bandera & Nombre1 == "" Entonces
					Bandera <- Verdadero;
					Nombre1 <- Nombre;
				FinSi
				
				si no Bandera & Nombre2 == "" Entonces
					Bandera <- Verdadero;
					Nombre2 <- Nombre;
				FinSi
				
				si no Bandera & Nombre3 == "" Entonces
					Bandera <- Verdadero;
					Nombre3 <- Nombre;
				FinSi
				
				si no Bandera & Nombre4 == "" Entonces
					Bandera <- Verdadero;
					Nombre4 <- Nombre;
				FinSi
				
				si no Bandera & Nombre5 == "" Entonces
					Bandera <- Verdadero;
					Nombre5 <- Nombre;
				FinSi
				
				si no Bandera & Nombre6 == "" Entonces
					Bandera <- Verdadero;
					Nombre6 <- Nombre;
				FinSi
				
				si no Bandera & Nombre7 == "" Entonces
					Bandera <- Verdadero;
					Nombre7 <- Nombre;
				FinSi
				
				si no Bandera & Nombre8 == "" Entonces
					Bandera <- Verdadero;
					Nombre8 <- Nombre;
				FinSi
				
				
				Escribir "Presione ENTER para continuar.";
				leer Ignorar;
			2:
				Escribir "Por favor, ingrese el nombre del cliente";
				leer Nombre;
				
				
				si Nombre == "" Entonces
					Bandera <- Verdadero;
				FinSi				
				
				
				Si no Bandera & Nombre == Nombre1 Entonces
					Bandera <- Verdadero;
					Opcion <- 1;
				FinSi
				
				Si no Bandera & Nombre == Nombre2 Entonces
					Bandera <- Verdadero;
					Opcion <- 2;
				FinSi
				
				Si no Bandera & Nombre == Nombre3 Entonces
					Bandera <- Verdadero;
					Opcion <- 3;
				FinSi
				
				Si no Bandera & Nombre == Nombre4 Entonces
					Bandera <- Verdadero;
					Opcion <- 4;
				FinSi
				
				Si no Bandera & Nombre == Nombre5 Entonces
					Bandera <- Verdadero;
					Opcion <- 5;
				FinSi
				
				Si no Bandera & Nombre == Nombre6 Entonces
					Bandera <- Verdadero;
					Opcion <- 6;
				FinSi
				
				Si no Bandera & Nombre == Nombre7 Entonces
					Bandera <- Verdadero;
					Opcion <- 7;
				FinSi
				
				Si no Bandera & Nombre == Nombre8 Entonces
					Bandera <- Verdadero;
					Opcion <- 8;
				FinSi
				
				
				si no Bandera Entonces
					Escribir "Ese cliente no está registrada";
				FinSi
				
				
				si Bandera & Nombre <> "" Entonces
					Repetir
						Escribir "¿Aprovó el examen? [S/N]";
						Leer Ignorar;
						
						Bandera <- Falso;
						Bandera <- Bandera | Ignorar == "N";
						Bandera <- Bandera | Ignorar == "n";
						Bandera <- Bandera | Ignorar == "S";
						Bandera <- Bandera | Ignorar == "s";
					Hasta Que Bandera;
					
					si Opcion == 1 Entonces
						Evaluacion1 <- "No";
					FinSi
					
					si Opcion == 2 Entonces
						Evaluacion2 <- "No";
					FinSi
					
					si Opcion == 3 Entonces
						Evaluacion3 <- "No";
					FinSi
					
					si Opcion == 4 Entonces
						Evaluacion4 <- "No";
					FinSi
					
					si Opcion == 5 Entonces
						Evaluacion5 <- "No";
					FinSi
					
					si Opcion == 6 Entonces
						Evaluacion6 <- "No";
					FinSi
					
					si Opcion == 7 Entonces
						Evaluacion7 <- "No";
					FinSi
					
					si Opcion == 8 Entonces
						Evaluacion8 <- "No";
					FinSi
					
					Bandera <- Falso;
					Bandera <- Bandera | Ignorar == "S";
					Bandera <- Bandera | Ignorar == "s";
					si Bandera Entonces
						
						si Opcion == 1 Entonces
							Evaluacion1 <- "Sí";
						FinSi
						
						si Opcion == 2 Entonces
							Evaluacion2 <- "Sí";
						FinSi
						
						si Opcion == 3 Entonces
							Evaluacion3 <- "Sí";
						FinSi
						
						si Opcion == 4 Entonces
							Evaluacion4 <- "Sí";
						FinSi
						
						si Opcion == 5 Entonces
							Evaluacion5 <- "Sí";
						FinSi
						
						si Opcion == 6 Entonces
							Evaluacion6 <- "Sí";
						FinSi
						
						si Opcion == 7 Entonces
							Evaluacion7 <- "Sí";
						FinSi
						
						si Opcion == 8 Entonces
							Evaluacion8 <- "Sí";
						FinSi
						
						
						Escribir "Los datos se han actualizado";
					FinSi
				FinSi
				
				
				si Nombre <> "" Entonces
					Escribir "Presione ENTER para continuar.";
					leer Ignorar;
				FinSi
			3:
				Escribir "Por favor, ingrese la placa del vehículo";
				leer Nombre;
				
				
				si Nombre == "" Entonces
					Bandera <- Verdadero;
				FinSi				
				
				
				Si no Bandera & Nombre == Nombre1 Entonces
					Bandera <- Verdadero;
					Evaluacion <- Evaluacion1;
				FinSi
				
				Si no Bandera & Nombre == Nombre2 Entonces
					Bandera <- Verdadero;
					Evaluacion <- Evaluacion2;
				FinSi
				
				Si no Bandera & Nombre == Nombre3 Entonces
					Bandera <- Verdadero;
					Evaluacion <- Evaluacion3;
				FinSi
				
				Si no Bandera & Nombre == Nombre4 Entonces
					Bandera <- Verdadero;
					Evaluacion <- Evaluacion4;
				FinSi
				
				Si no Bandera & Nombre == Nombre5 Entonces
					Bandera <- Verdadero;
					Evaluacion <- Evaluacion5;
				FinSi
				
				Si no Bandera & Nombre == Nombre6 Entonces
					Bandera <- Verdadero;
					Evaluacion <- Evaluacion6;
				FinSi
				
				Si no Bandera & Nombre == Nombre7 Entonces
					Bandera <- Verdadero;
					Evaluacion <- Evaluacion7;
				FinSi
				
				Si no Bandera & Nombre == Nombre8 Entonces
					Bandera <- Verdadero;
					Evaluacion <- Evaluacion8;
				FinSi
				
				
				si Bandera & Nombre <> "" Entonces
					Escribir "Nombre: ", Nombre;
					Escribir "Evaluacion aprobada: ", Evaluacion;
				FinSi
				
				si no Bandera & Nombre <> "" Entonces
					Escribir "Este cliente no está registrada";
				FinSi
				
				
				si Nombre <> "" Entonces
					Escribir "Presione ENTER para continuar.";
					leer Ignorar;
				FinSi
		FinSegun
	Hasta Que Opcion == 4;
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
