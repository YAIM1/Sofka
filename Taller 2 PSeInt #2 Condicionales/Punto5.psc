//---//---//---//---//---//---//---//---//---//---//
// La Droguería Mi Salud presta sus servicios en la localidad de Suba y requiere una aplicación para poder facturar los productos que vende a sus clientes y para ello, los productos tienen unas características que deben indicársele al cliente para que pueda escoger el producto a comprar.
// Para cada cliente, se tienen las opciones de compra de producto, consulta de precios por producto y devoluciones en caso de que se presenten.
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto5
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Opcion Como Entero;
	Definir Novedad Como Caracter;
	
	Definir IDProducto1 Como Entero;
	Definir IDProducto2 Como Entero;
	Definir IDProducto3 Como Entero;

	Definir NombreProducto1 Como Caracter;
	Definir NombreProducto2 Como Caracter;
	Definir NombreProducto3 Como Caracter;

	Definir PrecioProducto1 Como Real;
	Definir PrecioProducto2 Como Real;
	Definir PrecioProducto3 Como Real;
	
	Definir ID Como Entero;
	Definir Bandera Como Logico;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Bandera <- Falso;
	
	IDProducto1 <- 1;
	NombreProducto1 <- "P1";
	PrecioProducto1 <- 1.1;
	
	IDProducto2 <- 2;
	NombreProducto2 <- "P2";
	PrecioProducto2 <- 2.2;
	
	IDProducto3 <- 3;
	NombreProducto3 <- "P3";
	PrecioProducto3 <- 3.3;
	//---//---//---//---//---//---//---//---//---//---//
	// Mostrar las opciones disponibles
	Escribir " -> Menú <- ";
	Escribir "1. Comprar un producto";
	Escribir "2. Consultar el precio de un producto";
	Escribir "3. Realizar una devolución";
	Escribir "Por favor, seleccione la opción deseada";
	Leer Opcion;
	
	// Identificar la opción selecionada
	Segun Opcion Hacer
		1:
			Escribir "ID del producto a comprar";
			leer ID;
			
			si no Bandera & ID == IDProducto1 Entonces
				Bandera <- Verdadero;
				Escribir "Se ha comprado";
				Escribir "Producto: ", NombreProducto1;
				Escribir "Precio: ", PrecioProducto1;
			FinSi
			
			si no Bandera & ID == IDProducto2 Entonces
				Bandera <- Verdadero;
				Escribir "Se ha comprado";
				Escribir "Producto: ", NombreProducto2;
				Escribir "Precio: ", PrecioProducto2;
			FinSi
			
			si no Bandera & ID == IDProducto3 Entonces
				Bandera <- Verdadero;
				Escribir "Se ha comprado";
				Escribir "Producto: ", NombreProducto3;
				Escribir "Precio: ", PrecioProducto3;
			FinSi
			
			si no Bandera Entonces
				Escribir "ID invalido";
			FinSi
		2:
			Escribir "Películas disponibles";
			Escribir "ID: ", IDProducto1,"    ", "Películas: ", NombreProducto1,"    ", "Precio: ", PrecioProducto1;
			Escribir "ID: ", IDProducto2,"    ", "Películas: ", NombreProducto2,"    ", "Precio: ", PrecioProducto2;
			Escribir "ID: ", IDProducto3,"    ", "Películas: ", NombreProducto3,"    ", "Precio: ", PrecioProducto3;
		3:
			Escribir "ID del producto a devolver";
			leer ID;
			
			si no Bandera & ID == IDProducto1 Entonces
				Bandera <- Verdadero;
				Escribir "Se ha devuelto";
				Escribir "Producto: ", NombreProducto1;
				Escribir "Precio: ", PrecioProducto1;
			FinSi
			
			si no Bandera & ID == IDProducto2 Entonces
				Bandera <- Verdadero;
				Escribir "Se ha devuelto";
				Escribir "Producto: ", NombreProducto2;
				Escribir "Precio: ", PrecioProducto2;
			FinSi
			
			si no Bandera & ID == IDProducto3 Entonces
				Bandera <- Verdadero;
				Escribir "Se ha devuelto";
				Escribir "Producto: ", NombreProducto3;
				Escribir "Precio: ", PrecioProducto3;
			FinSi
			
			si no Bandera Entonces
				Escribir "ID invalido";
			FinSi
		De Otro Modo:
			Escribir "Opción invalida";
	FinSegun
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
