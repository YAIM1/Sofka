//---//---//---//---//---//---//---//---//---//---//
// El banco "Su banco fiel" es un banco que inicia sus actividades financieras y necesita una aplicación para llevar las cuentas de sus usuarios; por lo tanto, se sugiere que la cuenta tenga los atributos titular y cantidad.
// Para cada cliente las cuentas permitirán realizar ingresos, retiros o consultas de valor.
// En los ingresos no se pueden insertar valores negativos y para los retiros el valor no puede ser mayor al valor que tiene en la cuenta.
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto10
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Titular Como Caracter;
	Definir Cantidad Como Real;
	
	Definir Opcion Como Entero;
	Definir Bandera Como Logico;
	Definir NuevaCantidad Como Real;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Bandera <- Falso;

	Cantidad <- 0;
	//---//---//---//---//---//---//---//---//---//---//
	// Mostrar las opciones disponibles
	Escribir " -> Acciones <- ";
	Escribir "1. Ingreso";
	Escribir "2. Retiro";
	Escribir "3. Consulta";
	Escribir "Por favor, seleccione la opción deseada";
	Leer Opcion;
	
	// Identificar la opción selecionada
	Segun Opcion Hacer
		1:
			Escribir "Por favor, ingrese el nombre del titular";
			Leer Titular;
			
			Escribir "Por favor, ingrese el valor a depositar";
			Leer NuevaCantidad;
			
			si NuevaCantidad <= 0 Entonces
				Escribir "El valor debe se mayor a cero";
			SiNo
				Cantidad <- Cantidad + NuevaCantidad;
				Escribir "Se ha depositado: ", NuevaCantidad;
			FinSi
		2:
			Escribir "Por favor, ingrese el nombre del titular";
			Leer Titular;
			
			Escribir "Por favor, ingrese el valor a retirar";
			Leer NuevaCantidad;
			
			si no Bandera & NuevaCantidad <= 0 Entonces
				Bandera <- Verdadero;
				Escribir "El valor debe se mayor a cero";
			FinSi
			
			si no Bandera & Cantidad < NuevaCantidad Entonces
				Bandera <- Verdadero;
				Escribir "Saldo insuficiente";
			FinSi
			
			si no Bandera Entonces
				Cantidad <- Cantidad - NuevaCantidad;
				Escribir "Se ha retirado: ", NuevaCantidad;
			FinSi
		3:
			Escribir "Por favor, ingrese el nombre del titular";
			Leer Titular;
			
			Escribir "Su saldo actual es de ", Cantidad;
		De Otro Modo:
			Escribir "Opción invalida";
	FinSegun
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
