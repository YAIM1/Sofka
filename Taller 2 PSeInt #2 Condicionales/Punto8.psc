//---//---//---//---//---//---//---//---//---//---//
// El pastelero Don Carlos es el mejor pastelero de la ciudad y requiere una aplicación que le permita registrar los pedidos de los clientes en cuanto a las tortas que realiza.
// Cada torta tiene unas características propias como sabor, cantidad (porciones) y decoraciones).
// Se requiere que la aplicación permita registrar los pedidos, las tortas disponibles y las ventas que se registren diariamente.
//---//---//---//---//---//---//---//---//---//---//
SubProceso Resultado <- fUltimoEstado( Indice, Estados )
	Definir Resultado Como Caracter;
	Definir i Como Entero;
	Resultado <- "";
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		si Estados[ Indice, i ] <> "" Entonces
			Resultado <- Estados[ Indice, i ];
		FinSi
	FinPara
FinSubProceso

SubProceso NuevoEstado( Indice, Estados, Estado )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Bandera Como Logico;
	Definir i Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Agregar el nuevo estado
	Bandera <- Falso;
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		si Estados[ Indice, i ] == Estado Entonces
			Bandera <- Verdadero;
		FinSi
	FinPara
	
	si no Bandera Entonces
		Para i <- 0 Hasta 2 Con Paso 1 Hacer
			si no Bandera & Estados[ Indice, i ] == "" Entonces
				Bandera <- Verdadero;
				Estados[ Indice, i ] <- Estado;
			FinSi
		FinPara
	FinSi
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

//SubProceso variable_de_retorno <- Nombre ( Argumentos )
//	//---//---//---//---//---//---//---//---//---//---//
//	// Definición de variables
//	//---//---//---//---//---//---//---//---//---//---//
//	// Inicializar las variables
//	//---//---//---//---//---//---//---//---//---//---//
//	// Ingreso de datos
//	//---//---//---//---//---//---//---//---//---//---//
//FinSubProceso
	
SubProceso RegistarTorta( IDs, Sabores, Porciones, Decoraciones, Estados, Estado )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Bandera Como Logico;
	Definir Indice Como Entero;
	Definir i Como Entero;
	
	Definir Ignorar Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Indice <- 0;
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		si IDs[ i ] <> 0 Entonces
			Indice <- Indice + 1;
		FinSi
	FinPara
	
	Bandera <- Falso;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	si Indice > 9 Entonces
		Escribir "No hay espacio para más datos";
		Bandera <- Verdadero;
	FinSi
	
	
	si no Bandera Entonces
		IDs[ Indice ] <- Indice + 1;
		
		Escribir "[ Datos del tortas ]";
		Escribir "Por favor, ingrese el sabor";
		Leer Sabores[ Indice ];
		
		Escribir "Por favor, ingrese el numero de porciones que debe tener";
		Leer Porciones[ Indice ];
		
		Escribir "Por favor, ingrese la descripción de la decoración";
		Leer Decoraciones[ Indice ];
		
		NuevoEstado( Indice, Estados, Estado );
		Escribir "Los datos se han guardado.";
	FinSi
	
	Escribir "Presione ENTER para continuar.";
	leer Ignorar;
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso ConsultarTortas( IDs, Sabores, Porciones, Decoraciones, Estados, Estado )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Bandera Como Logico;
	Definir Indice Como Entero;
	Definir i Como Entero;

	Definir Contador Como Entero;
	Definir UltimoEstado Como Caracter;
	
	Definir Ignorar Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Bandera <- Falso;
	Contador <- 0;
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de datos
	
	Escribir "[ Tortas en estado: ", Estado, " ]";
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		UltimoEstado <- fUltimoEstado( i, Estados );
		si UltimoEstado == Estado Entonces
			Contador <- Contador + 1;
			Escribir "ID: ", IDs[ i ], "   ","Sabor: ", Sabores[ i ], "   ","Porciones: ", Porciones[ i ], "   ","Decoraciones: ", Decoraciones[ i ];
		FinSi
	FinPara
	
	si Contador < 1 Entonces
		Escribir "No hay tortas en este estado";
	FinSi
	
	
	Escribir "Presione ENTER para continuar.";
	leer Ignorar;
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso SeleccionarTorta( IDs, Sabores, Porciones, Decoraciones, Estados, Estado )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir ID Como Entero;
	Definir Bandera Como Logico;
	Definir Ignorar Como Caracter;

	Definir i Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Bandera <- Falso;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor, indique el ID de la torta [ ENTER: Torta no regitrada ]";
	leer ID;
	
	si ID < 0 | ID > 10 Entonces
		Bandera <- Verdadero;
	FinSi
	
	si Bandera Entonces
		RegistarTorta( IDs, Sabores, Porciones, Decoraciones, Estados, "Disponible" );
	FinSi
	
	si no Bandera Entonces
		Para i <- 0 Hasta 9 Con Paso 1 Hacer
			si IDs[ i ] == ID Entonces
				NuevoEstado( i, Estados, Estado );
				Escribir "ID: ", IDs[ i ];
				Escribir "Sabor: ", Sabores[ i ];
				Escribir "Porciones: ", Porciones[ i ];
				Escribir "Decoraciones: ", Decoraciones[ i ];
				Escribir "Estado actual: ", fUltimoEstado( i, Estados );
				
				Escribir "Presione ENTER para continuar.";
				leer Ignorar;
			FinSi
		FinPara
	FinSi
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

Proceso Punto8
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Opcion Como Entero;
	Definir Ignorar Como Caracter;

	Definir IDs Como Entero;
	Definir Sabores Como Caracter;
	Definir Porciones Como Entero;
	Definir Decoraciones Como Caracter;
	Definir Estados Como Caracter;
	
	Dimension IDs[ 10 ];
	Dimension Sabores[ 10 ];
	Dimension Porciones[ 10 ];
	Dimension Decoraciones[ 10 ];
	Dimension Estados[ 10, 3 ];
	
	Definir i Como Entero;
	Definir j Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		IDs[ i ] <- 0;
		Sabores[ i ] <- "";
		Porciones[ i ] <- 0;
		Decoraciones[ i ] <- "";
		Para j <- 0 Hasta 2 Con Paso 1 Hacer
			Estados[ i, j ] <- "";
		FinPara
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Repetir
		Limpiar Pantalla;
		
		Escribir " -> Menú <- ";
		Escribir "1. Registrar un pedido";
		Escribir "2. Consultar pedidos";
		Escribir "3. Registrar tortas disponible";
		Escribir "4. Consultar tortas disponible";
		Escribir "5. Registrar una venta";
		Escribir "6. Consultar ventas";
		Escribir "7. Finalizar el programa";
		Escribir "Por favor, seleccione la opción deseada";
		Leer Ignorar;
		
		// Identificar la selección
		Opcion <- 0;
		si Ignorar == "1" Entonces Opcion <- 1; FinSi
		si Ignorar == "2" Entonces Opcion <- 2; FinSi
		si Ignorar == "3" Entonces Opcion <- 3; FinSi
		si Ignorar == "4" Entonces Opcion <- 4; FinSi
		si Ignorar == "5" Entonces Opcion <- 5; FinSi
		si Ignorar == "6" Entonces Opcion <- 6; FinSi
		si Ignorar == "7" Entonces Opcion <- 7; FinSi
		
		// Ejecutar la opción selecionada
		Segun Opcion Hacer
			1: RegistarTorta( IDs, Sabores, Porciones, Decoraciones, Estados, "Pedido" );
			2: ConsultarTortas( IDs, Sabores, Porciones, Decoraciones, Estados, "Pedido" );
			3: SeleccionarTorta( IDs, Sabores, Porciones, Decoraciones, Estados, "Disponible" );
			4: ConsultarTortas( IDs, Sabores, Porciones, Decoraciones, Estados, "Disponible" );
			5: SeleccionarTorta( IDs, Sabores, Porciones, Decoraciones, Estados, "Vendido" );
			6: ConsultarTortas( IDs, Sabores, Porciones, Decoraciones, Estados, "Vendido" );
		FinSegun
	Hasta Que Opcion == 7;
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
