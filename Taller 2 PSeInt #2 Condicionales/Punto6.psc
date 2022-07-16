//---//---//---//---//---//---//---//---//---//---//
// El taller de motos "El Maquinista" recibe motocicletas de alto cilindraje para realizar las respectivas revisiones y requiere una aplicación que le permita registrar los servicios generados a sus clientes.
// Para cada motocicleta se debe tener registro del ingreso al taller y las observaciones por parte del cliente.
// También debe existir registro de salida del taller con las novedades y otra de arreglos hechos por el mecánico en caso de que se requiera inventariar cambios repuestos en la motocicleta al entregarla.
//---//---//---//---//---//---//---//---//---//---//
SubProceso Ingreso( Placas, IngresoRegistros, IngresoObservaciones )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Bandera Como Logico;
	Definir Indice Como Entero;
	Definir i Como Entero;
	
	Definir Placa Como Caracter;
	Definir Ignorar Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Indice <- 0;
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		si Placas[ i ] <> "" Entonces
			Indice <- Indice + 1;
		FinSi
	FinPara
	
	Bandera <- Falso;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	si Indice > 9 Entonces
		Escribir "No hay espacio para otro vehículo";
		Bandera <- Verdadero;
	FinSi
	
	
	si Indice <= 9 Entonces
		Escribir "Por favor, ingrese la placa del vehículo";
		leer Placa;
	FinSi
	
	
	si Placa == "" Entonces
		Bandera <- Verdadero;
		Escribir "Debe escribir una placa";
	FinSi				
	
	
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		Bandera <- Bandera | Placa == Placas[ i ];
	FinPara
	
	
	si Bandera & Indice <= 9 & Placa <> "" Entonces
		Escribir "Esa placa ya está registrada";
	FinSi
	
	
	si no Bandera Entonces	
		Para i <- 0 Hasta 9 Con Paso 1 Hacer
			si no Bandera & Placas[ i ] == "" Entonces
				Bandera <- Verdadero;
				Indice <- i;
			FinSi
		FinPara
		
		Placas[ Indice ] <- Placa;
		
		Escribir "Por favor, ingrese el registro de ingreso";
		leer Ignorar;   IngresoRegistros[ Indice ] <- ConvertirANumero( Ignorar );
		
		Escribir "Por favor, las observaciones del vehículo";
		leer Ignorar;   IngresoObservaciones[ Indice ] <- Ignorar;
		
		Escribir "Los datos han sido guardados";
	FinSi
	
	
	Escribir "Presione ENTER para continuar.";
	leer Ignorar;
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso Salida( Placas, SalidaRegistros, SalidaObservaciones, Inventario )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Bandera Como Logico;
	Definir Indice Como Entero;
	Definir i Como Entero;
	
	Definir Placa Como Caracter;
	Definir Ignorar Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Indice <- 0;
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		si Placas[ i ] <> "" Entonces
			Indice <- Indice + 1;
		FinSi
	FinPara
	
	Bandera <- Falso;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	si Indice < 1 Entonces
		Escribir "No hay ningun vehiculo registrado.";
		Bandera <- Verdadero;
	FinSi
	
	
	si Indice > 0 Entonces
		Escribir "Por favor, ingrese la placa del vehículo";
		leer Placa;
	FinSi
	
	
	si Placa == "" Entonces
		Bandera <- Verdadero;
		Escribir "Debe escribir una placa";
	FinSi				
	
	si no Bandera Entonces
		Bandera <- Verdadero;
		Para i <- 0 Hasta 9 Con Paso 1 Hacer
			si Placa == Placas[ i ] Entonces
				Bandera <- Falso;
			FinSi
		FinPara
	FinSi
	
	
	si Bandera & Indice <= 9 & Placa <> "" Entonces
		Escribir "Esa placa no está registrado";
	FinSi
	
	
	si no Bandera Entonces	
		Para i <- 0 Hasta 9 Con Paso 1 Hacer
			si no Bandera & Placa == Placas[ i ] Entonces
				Bandera <- Verdadero;
				Indice <- i;
			FinSi
		FinPara
		
		Placas[ Indice ] <- Placa;
		
		Escribir "Por favor, ingrese el registro de salida";
		leer Ignorar;   SalidaRegistros[ Indice ] <- ConvertirANumero( Ignorar );
		
		Escribir "Por favor, las observaciones del vehículo";
		leer Ignorar;   SalidaObservaciones[ Indice ] <- Ignorar;
		
		Repetir
			Escribir "¿Se usó algó del inventario? [ S/N ]";
			Leer Ignorar;
			
			Bandera <- Falso;
			Bandera <- Bandera | Ignorar == "S";
			Bandera <- Bandera | Ignorar == "s";
			Bandera <- Bandera | Ignorar == "N";
			Bandera <- Bandera | Ignorar == "n";
		Hasta Que Bandera;
		
		si Ignorar == "S" o Ignorar == "s" Entonces
			Escribir "Ingrese lo usado del inventario";
			Leer Ignorar;   Inventario[ Indice ] <- Ignorar;
		FinSi
		
		Escribir "Los datos han sido guardados";
	FinSi
	
	
	Escribir "Presione ENTER para continuar.";
	leer Ignorar;
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso Consultar( Placas, IngresoRegistros, IngresoObservaciones, SalidaRegistros, SalidaObservaciones, Inventario )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Bandera Como Logico;
	Definir Indice Como Entero;
	Definir i Como Entero;
	
	Definir Placa Como Caracter;
	Definir Ignorar Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Bandera <- Falso;
	//---//---//---//---//---//---//---//---//---//---//
	// Mostrar la información
	Escribir "Por favor, ingrese la placa del vehículo";
	leer Placa;
	
	
	si Placa == "" Entonces
		Bandera <- Verdadero;
	FinSi
	
	si no Bandera Entonces   Indice <- 10;
		Para i <- 0 Hasta 9 Con Paso 1 Hacer
			Bandera <- Bandera | Placa == Placas[ i ];
			si Placa == Placas[ i ] Entonces
				Indice <- i;
			FinSi
		FinPara
	FinSi
	
	
	si Bandera & Placa <> "" Entonces
		Escribir "Placa: ", Placas[ Indice ];
		Escribir "Registros de ingreso: ", IngresoRegistros[ Indice ];
		Escribir "Observaciones de ingreso: ", IngresoObservaciones[ Indice ];
		si SalidaRegistros[ Indice ] > 0 Entonces
			Escribir "Registros de salida: ",SalidaRegistros[ Indice ];
			Escribir "Observaciones de salida: ",SalidaObservaciones[ Indice ];
			Escribir "Inventario: ", Inventario[ Indice ];
		FinSi
	FinSi
	
	si no Bandera & Placa <> "" Entonces
		Escribir "Esa placa no está registrada";
	FinSi
	
	
	si Placa <> "" Entonces
		Escribir "Presione ENTER para continuar.";
		leer Ignorar;
	FinSi
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

Proceso Punto6
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Opcion Como Entero;
	Definir Ignorar Como Caracter;

	Definir Placas Como Caracter;
	Dimension Placas[ 10 ];

	Definir IngresoRegistros Como Entero;
	Definir IngresoObservaciones Como Caracter;
	
	Dimension IngresoRegistros[ 10 ];
	Dimension IngresoObservaciones[ 10 ];
	
	Definir SalidaRegistros Como Entero;
	Definir SalidaObservaciones Como Caracter;
	Definir Inventario Como Caracter;
	
	Dimension SalidaRegistros[ 10 ];
	Dimension SalidaObservaciones[ 10 ];
	Dimension Inventario[ 10 ];
	
	Definir i Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		Placas[ i ] <- "";
		
		IngresoRegistros[ i ] <- 0;
		IngresoObservaciones[ i ] <- "";
		
		SalidaRegistros[ i ] <- 0;
		SalidaObservaciones[ i ] <- "";
		Inventario[ i ] <- "";
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Repetir
		Limpiar Pantalla;
		
		Escribir " -> Menú <- ";
		Escribir "1. Registrar el ingreso";
		Escribir "2. Registrar la salida";
		Escribir "3. Consultar información";
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
			1: Ingreso( Placas, IngresoRegistros, IngresoObservaciones );
			2: Salida( Placas, SalidaRegistros, SalidaObservaciones, Inventario );
			3: Consultar( Placas, IngresoRegistros, IngresoObservaciones, SalidaRegistros, SalidaObservaciones, Inventario );
		FinSegun
	Hasta Que Opcion == 4;
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
