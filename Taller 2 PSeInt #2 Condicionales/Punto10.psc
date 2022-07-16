//---//---//---//---//---//---//---//---//---//---//
// El banco "Su banco fiel" es un banco que inicia sus actividades financieras y necesita una aplicación para llevar las cuentas de sus usuarios; por lo tanto, se sugiere que la cuenta tenga los atributos titular y cantidad.
// Para cada cliente las cuentas permitirán realizar ingresos, retiros o consultas de valor.
// En los ingresos no se pueden insertar valores negativos y para los retiros el valor no puede ser mayor al valor que tiene en la cuenta.
//---//---//---//---//---//---//---//---//---//---//
SubProceso Depositar( Titulares, Cantidades )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Ignorar Como Caracter;
	Definir Indice Como Entero;
	Definir i Como Entero;

	Definir Titular Como Caracter;
	Definir Cantidad Como Real;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Indice <- -1;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor, ingrese el nombre del titular";
	Leer Titular;
	
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		si Titulares[ i ] == Titular Entonces
			Indice <- i;
		FinSi
	FinPara
	
	si Indice >= 0 Entonces
		
		Escribir "Por favor, ingrese el valor a depositar";
		Leer Cantidad;
		
		si Cantidad <= 0 Entonces
			Escribir "El valor debe se mayor a cero";
		FinSi
		
		si Cantidad > 0 Entonces
			Cantidades[ Indice ] <- Cantidades[ Indice ] + Cantidad;
			Escribir "Se ha depositado: ", Cantidad;
		FinSi
		
	FinSi
	
	si Indice < 0 Entonces
		Escribir "Usuario no resgistrado";
	FinSi
	
	Escribir "Presione ENTER para continuar.";
	leer Ignorar;
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso Retirar( Titulares, Cantidades )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Ignorar Como Caracter;
	Definir Indice Como Entero;
	Definir i Como Entero;
	
	Definir Titular Como Caracter;
	Definir Cantidad Como Real;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Indice <- -1;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor, ingrese el nombre del titular";
	Leer Titular;
	
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		si Titulares[ i ] == Titular Entonces
			Indice <- i;
		FinSi
	FinPara
	
	si Indice >= 0 Entonces
		
		Escribir "Por favor, ingrese el valor a retirar";
		Leer Cantidad;
		
		si Cantidad <= 0 Entonces
			Escribir "El valor debe se mayor a cero";
		FinSi
		
		si Cantidades[ Indice ] < Cantidad Entonces
			Escribir "Saldo insuficiente";
		FinSi

		si Cantidad > 0 & Cantidades[ Indice ] >= Cantidad Entonces
			Cantidades[ Indice ] <- Cantidades[ Indice ] - Cantidad;
			Escribir "Se ha retirado: ", Cantidad;
		FinSi
		
	FinSi
	
	si Indice < 0 Entonces
		Escribir "Usuario no resgistrado";
	FinSi
	
	Escribir "Presione ENTER para continuar.";
	leer Ignorar;
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso Consultar( Titulares, Cantidades )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Ignorar Como Caracter;
	Definir Indice Como Entero;
	Definir i Como Entero;
	
	Definir Titular Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Indice <- -1;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor, ingrese el nombre del titular";
	Leer Titular;
	
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		si Titulares[ i ] == Titular Entonces
			Indice <- i;
		FinSi
	FinPara
	
	si Indice >= 0 Entonces
		Escribir "Su saldo actual es de ", Cantidades[ Indice ];
	FinSi
	
	si Indice < 0 Entonces
		Escribir "Usuario no resgistrado";
	FinSi
	
	Escribir "Presione ENTER para continuar.";
	leer Ignorar;
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

Proceso Punto10
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Titulares Como Caracter;
	Definir Cantidades Como Real;
	
	Dimension Titulares[ 10 ];
	Dimension Cantidades[ 10 ];

	Definir Opcion Como Entero;
	Definir Ignorar Como Caracter;
	
	Definir i Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		Titulares[ i ] <- ConvertirATexto( i );
		Cantidades[ i ] <- 0;
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Repetir
		Limpiar Pantalla;
		
		// Mostrar las opciones disponibles
		Escribir " -> Acciones <- ";
		Escribir "1. Ingreso";
		Escribir "2. Retiro";
		Escribir "3. Consulta";
		Escribir "4. Salir";
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
			1: Depositar( Titulares, Cantidades );
			2: Retirar( Titulares, Cantidades );
			3: Consultar( Titulares, Cantidades );
		FinSegun
	Hasta Que Opcion == 4;
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
