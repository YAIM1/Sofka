//---//---//---//---//---//---//---//---//---//---//
// La escuela automovilística "El Maestro" requiere una aplicación que permita registrar a sus clientes en los cursos de enseñanza automovilística y establecer quienes lo han aprobado para continuar con el trámite de adquirir la licencia de conducción.
// Para cada usuario se debe permitir registrar su ingreso al curso, consultar usuarios que hayan presentado el curso y resultados de la prueba del curso (si fueron aprobados o no).
// Recuerde que el sistema debe terminar cuando el usuario así lo indique.
// Tenga presente que la escuela tiene capacidad máxima de gestionar 8 usuarios en su totalidad.
//---//---//---//---//---//---//---//---//---//---//
SubProceso Registrar( Nombres, Evaluaciones )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Bandera Como Logico;
	Definir Ignorar Como Caracter;
	Definir Indice Como Entero;
	Definir i Como Entero;
	
	Definir Nombre Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Indice <- 0;
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		si Nombres[ i ] <> "" Entonces
			Indice <- Indice + 1;
		FinSi
	FinPara
	
	Bandera <- Falso;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
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
	
	
	Para i <- 0 Hasta 7 Con Paso 1 Hacer
		Bandera <- Bandera | Nombre == Nombres[ i ];
	FinPara
	
	
	si Bandera & Indice < 8 & Nombre <> "" Entonces
		Escribir "Ese cliente ya está registrado";
	FinSi
	
	
	si no Bandera Entonces
		Indice <- -1;
		Para i <- 0 Hasta 3 Con Paso 1 Hacer
			Si Indice < 0 & Nombres[ i ] == "" Entonces
				Indice <- i;
			FinSi
		FinPara
		
		Nombres[ Indice ] <- Nombre;
		Evaluaciones[ Indice ] <- "No";
		
		Escribir "Los datos han sido guardados";
	FinSi
	
	
	Escribir "Presione ENTER para continuar.";
	leer Ignorar;
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso Evaluar( Nombres, Evaluaciones )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Ignorar Como Caracter;
	Definir Indice Como Entero;
	Definir i Como Entero;
	
	Definir Bandera Como Logico;
	Definir Nombre Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Indice <- 0;
	Para i <- 0 Hasta 7 Con Paso 1 Hacer
		si Nombres[ i ] <> "" Entonces
			Indice <- Indice + 1;
		FinSi
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor, ingrese el nombre del cliente";
	leer Nombre;
	
	
	si Nombre == "" Entonces
		Bandera <- Verdadero;
	FinSi				
	
	
	Indice <- -1;
	si Nombre <> "" Entonces
		Para i <- 0 Hasta 7 Con Paso 1 Hacer
			Si Nombre == Nombres[ i ] Entonces
				Indice <- i;
			FinSi
		FinPara
	FinSi	
	
	si Indice >= 0 Entonces
		Repetir
			Escribir "¿Aprovó el examen? [S/N]";
			Leer Ignorar;
			
			Bandera <- Falso;
			Bandera <- Bandera | Ignorar == "N";
			Bandera <- Bandera | Ignorar == "n";
			Bandera <- Bandera | Ignorar == "S";
			Bandera <- Bandera | Ignorar == "s";
		Hasta Que Bandera;
		Evaluaciones[ Indice ] <- "No";
		
		Bandera <- Falso;
		Bandera <- Bandera | Ignorar == "S";
		Bandera <- Bandera | Ignorar == "s";
		si Bandera Entonces
			Evaluaciones[ Indice ] <- "Sí";
			Escribir "Los datos se han actualizado";
		FinSi
	FinSi
	
	si Indice < 0 Entonces
		Escribir "El cliente no está registrada";
	FinSi

	
	si Nombre <> "" Entonces
		Escribir "Presione ENTER para continuar.";
		leer Ignorar;
	FinSi
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso Consultar( Nombres, Evaluaciones )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Ignorar Como Caracter;
	Definir Indice Como Entero;
	Definir i Como Entero;
	
	Definir Nombre Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Indice <- 0;
	Para i <- 0 Hasta 7 Con Paso 1 Hacer
		si Nombres[ i ] <> "" Entonces
			Indice <- Indice + 1;
		FinSi
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor, ingrese el nombre del cliente";
	leer Nombre;
	
	Indice <- -1;
	si Nombre <> "" Entonces
		Para i <- 0 Hasta 7 Con Paso 1 Hacer
			Si Nombre == Nombres[ i ] Entonces
				Indice <- i;
			FinSi
		FinPara
	FinSi	
	
	si Indice >= 0 Entonces
		Escribir "Nombre: ", Nombres[ Indice ];
		Escribir "¿Aprobada? ",Evaluaciones[ Indice ];
	FinSi
	
	si Indice < 0 Entonces
		Escribir "Esa placa no está registrada";
	FinSi

	
	si Nombre <> "" Entonces
		Escribir "Presione ENTER para continuar.";
		leer Ignorar;
	FinSi
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

Proceso Punto8
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Opcion Como Entero;
	Definir Ignorar Como Cadena;
	
	Definir i Como Entero;
	
	Definir Nombres Como Caracter;
	Definir Evaluaciones Como Caracter;
	
	Dimension Nombres[ 8 ];
	Dimension Evaluaciones[ 8 ];
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Para i <- 0 Hasta 7 Con Paso 1 Hacer
		Nombres[ i ] <- "";
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Repetir
		Limpiar Pantalla;
		
		Escribir " -> Menú <-";
		Escribir "1. Registrar el usuario";
		Escribir "2. Resultados de la prueba del curso";
		Escribir "3. Consultar el usuario";
		Escribir "4. Finalizar el programa";
		Escribir "Por favor, seleccione la opción deseada";
		Leer Ignorar;
		
		// Identificar la selección
		Opcion <- 0;
		si Ignorar == "1" Entonces Opcion <- 1; FinSi
		si Ignorar == "2" Entonces Opcion <- 2; FinSi
		si Ignorar == "3" Entonces Opcion <- 3; FinSi
		si Ignorar == "4" Entonces Opcion <- 4; FinSi
		
		// Ejecutar la opción selecionada
		Segun Opcion Hacer
			1: Registrar( Nombres, Evaluaciones );
			2: Evaluar( Nombres, Evaluaciones );
			3: Consultar( Nombres, Evaluaciones );
		FinSegun
	Hasta Que Opcion == 4;
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
