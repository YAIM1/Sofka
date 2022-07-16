//---//---//---//---//---//---//---//---//---//---//
// La Droguería Mi Salud presta sus servicios en la localidad de Suba y requiere una aplicación para poder facturar los productos que vende a sus clientes y para ello, los productos tienen unas características que deben indicársele al cliente para que pueda escoger el producto a comprar.
// Para cada cliente, se tienen las opciones de compra de producto, consulta de precios por producto y devoluciones en caso de que se presenten.
//---//---//---//---//---//---//---//---//---//---//
SubProceso Comprar( IDs, Productos, Precios )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir ID Como Entero;
	Definir Bandera Como Logico;
	
	Definir i Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Mostrar la información
	Escribir "ID del producto a comprar";
	leer ID;
	
	Bandera <- Falso;
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		si no Bandera & ID == IDs[ i ] Entonces
			Bandera <- Verdadero;
			Escribir "Se ha comprado";
			Escribir "Producto: ", Productos[ i ];
			Escribir "Precio: ", Precios[ i ];
		FinSi
	FinPara

	si no Bandera Entonces
		Escribir "ID invalido";
	FinSi
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso Disponibles( IDs, Productos, Precios )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir i Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Mostrar la información
	Escribir "Productos disponibles";
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		Escribir "ID: ", IDs[ i ],"    ", "Películas: ", Productos[ i ],"    ", "Precio: ", Precios[ i ];
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso Devolver( IDs, Productos, Precios )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir ID Como Entero;
	Definir Bandera Como Logico;
	Definir Novedad Como Caracter;
	
	Definir i Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Mostrar la información
	Escribir "ID de la película a devolver";
	leer ID;
	
	Bandera <- Falso;
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		si no Bandera & ID == IDs[ i ] Entonces
			Bandera <- Verdadero;
			Escribir "Se ha devuelto";
			Escribir "Producto: ", Productos[ i ];
			Escribir "Precio: ", Precios[ i ];
		FinSi
	FinPara
	
	si no Bandera Entonces
		Escribir "ID invalido";
	FinSi
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

Proceso Punto5
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Opcion Como Entero;
	Definir Ignorar Como Caracter;
	
	Definir IDs Como Entero;
	Definir Productos Como Caracter;
	Definir Precios Como Real;

	Dimension IDs[ 10 ]	;
	Dimension Productos[ 10 ];
	Dimension Precios[ 10 ];

	Definir i Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		IDs[ i ] <- i;
		Productos[ i ] <- ConvertirATexto( i );
		Productos[ i ] <- Concatenar( "< Producto ", Productos[ i ] );
		Productos[ i ] <- Concatenar( Productos[ i ], " >" );
		Precios[ i ] <- i + i * 0.1;
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
	// Mostrar las opciones disponibles
	Escribir " -> Menú <- ";
	Escribir "1. Comprar un producto";
	Escribir "2. Consultar el precio de un producto";
	Escribir "3. Realizar una devolución";
	Escribir "Por favor, seleccione la opción deseada";
	Leer Ignorar;
	
	// Identificar la selección
	Opcion <- 0;
	si Ignorar == "1" Entonces Opcion <- 1; FinSi
	si Ignorar == "2" Entonces Opcion <- 2; FinSi
	si Ignorar == "3" Entonces Opcion <- 3; FinSi
	
	// Ejecutar la opción selecionada
	Segun Opcion Hacer
		1: Comprar( IDs, Productos, Precios );
		2: Disponibles( IDs, Productos, Precios );
		3: Devolver( IDs, Productos, Precios );
		De Otro Modo:
			Escribir "Opción invalida";
	FinSegun
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
