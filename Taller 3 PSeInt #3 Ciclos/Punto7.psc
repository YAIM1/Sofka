//---//---//---//---//---//---//---//---//---//---//
// El parqueadero "El guardián" presta sus servicios de parqueadero nocturno para los usuarios del barrio y requiere una aplicación que permita registrar los vehículos que se cuidan en estas instalaciones.
// Se sugiere que el parqueadero tenga los atributos del vehículo como son, placa y marca, y los datos del cliente como son nombre completo y número de teléfono.
// Para cada vehículo se debe permitir la opción de ingresar al parqueadero, retirar del parqueadero y consultar si un vehículo se encuentra en el parqueadero.
// Recuerde que el sistema debe terminar cuando el usuario así lo indique.
// Tenga en presente que el parqueadero solo puede almacenar máximo 5 vehículos.
//---//---//---//---//---//---//---//---//---//---//
SubProceso Ingresar( Placas, Marcas, Nombres, Telefonos )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Bandera Como Logico;
	Definir Ignorar Como Caracter;
	Definir Indice Como Entero;
	Definir i Como Entero;
	
	Definir Placa Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Indice <- 0;
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		si Placas[ i ] <> "" Entonces
			Indice <- Indice + 1;
		FinSi
	FinPara
	
	Bandera <- Falso;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	si Indice >= 4 Entonces
		Escribir "No hay espacio para otro vehículo";
		Bandera <- Verdadero;
	FinSi
	
	Placa <- "";
	si Indice < 4 Entonces
		Escribir "Por favor, ingrese la placa del vehículo";
		leer Placa;
	FinSi
	
	
	si no Bandera & Placa == "" Entonces
		Bandera <- Verdadero;
		Escribir "Debe escribir una placa";
	FinSi				
	
	
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Bandera <- Bandera | Placa == Placas[ i ];
	FinPara
	
	
	si Bandera & Indice < 5 & Placa <> "" Entonces
		Escribir "Esa placa ya está registrado";
	FinSi
	
	
	si no Bandera Entonces
		Indice <- -1;
		Para i <- 0 Hasta 3 Con Paso 1 Hacer
			Si Indice < 0 & Placas[ i ] == "" Entonces
				Indice <- i;
			FinSi
		FinPara
		
		Placas[ Indice ] <- Placa;
		
		Escribir "Por favor, ingrese la marca del vehículo";
		leer Marcas[ Indice ];
		
		Escribir "Por favor, ingrese el nombre completo";
		leer Nombres[ Indice ];
		
		Escribir "Por favor, ingrese el número de teléfono";
		leer Telefonos[ Indice ];
		
		Escribir "Los datos han sido guardados";
	FinSi	
	
	Escribir "Presione ENTER para continuar.";
	leer Ignorar;
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso Retirar( Placas, Marcas, Nombres, Telefonos )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Bandera Como Logico;
	Definir Ignorar Como Caracter;
	Definir Indice Como Entero;
	Definir i Como Entero;
	
	Definir Placa Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Indice <- 0;
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		si Placas[ i ] <> "" Entonces
			Indice <- Indice + 1;
		FinSi
	FinPara
	
	Bandera <- Falso;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor, ingrese la placa del vehículo";
	leer Placa;
	
	Indice <- -1;
	si Placa <> "" Entonces
		Para i <- 0 Hasta 2 Con Paso 1 Hacer
			Si Placa == Placas[ i ] Entonces
				Indice <- i;
			FinSi
		FinPara
	FinSi
	
	si Indice >= 0 Entonces
		Escribir "Placa: ", Placas[ Indice ];
		Escribir "Marca: ", Marcas[ Indice ];
		Escribir "Teléfono: ",Telefonos[ Indice ];
		Escribir "Nombre: ", Nombres[ Indice ];
	FinSi
	
	si Indice < 0 Entonces
		Escribir "Esa placa no está registrada";
	FinSi
	
	
	si Indice >= 0 Entonces
		Repetir
			Escribir "¿Desea eliminar este vehículo? [S/N]";
			Leer Ignorar;
			
			Bandera <- Falso;
			Bandera <- Bandera | Ignorar == "N";
			Bandera <- Bandera | Ignorar == "n";
			Bandera <- Bandera | Ignorar == "S";
			Bandera <- Bandera | Ignorar == "s";
		Hasta Que Bandera;
		
		Bandera <- Falso;
		Bandera <- Bandera | Ignorar == "S";
		Bandera <- Bandera | Ignorar == "s";
		si Bandera Entonces
			Placas[ Indice ] <- "";
			Marcas[ Indice ] <- "";
			Telefonos[ Indice ] <- "";
			Nombres[ Indice ] <- "";
			
			Escribir "Los datos han sido eliminado";
			Escribir "Presione ENTER para continuar.";
			leer Ignorar;
		FinSi
	FinSi
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso Consultar( Placas, Marcas, Nombres, Telefonos )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Ignorar Como Caracter;
	Definir Indice Como Entero;
	Definir i Como Entero;
	
	Definir Placa Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Indice <- 0;
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		si Placas[ i ] <> "" Entonces
			Indice <- Indice + 1;
		FinSi
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor, ingrese la placa del vehículo";
	leer Placa;
	
	Indice <- -1;
	si Placa <> "" Entonces
		Para i <- 0 Hasta 4 Con Paso 1 Hacer
			Si Placa == Placas[ i ] Entonces
				Indice <- i;
			FinSi
		FinPara
	FinSi	
	
	si Indice >= 0 Entonces
		Escribir "Placa: ", Placas[ Indice ];
		Escribir "Marca: ", Marcas[ Indice ];
		Escribir "Teléfono: ",Telefonos[ Indice ];
		Escribir "Nombre: ", Nombres[ Indice ];
	FinSi
	
	si Indice < 0 Entonces
		Escribir "Esa placa no está registrada";
	FinSi
	
	
	Escribir "Presione ENTER para continuar.";
	leer Ignorar;
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

Proceso Punto7
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Opcion Como Entero;
	Definir Ignorar Como Cadena;
	
	Definir i Como Entero;
	
	Definir Placas Como Caracter;
	Definir Marcas Como Caracter;
	Definir Nombres Como Caracter;
	Definir Telefonos Como Caracter;
	
	Dimension Placas[ 5 ];
	Dimension Marcas[ 5 ];
	Dimension Nombres[ 5 ];
	Dimension Telefonos[ 5 ];
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Placas[ i ] <- "";
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Repetir
		Limpiar Pantalla;
		
		Escribir " -> Menú <-";
		Escribir "1. Ingresar";
		Escribir "2. Retirar";
		Escribir "3. Consultar";
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
			1: Ingresar( Placas, Marcas, Nombres, Telefonos );
			2: Retirar( Placas, Marcas, Nombres, Telefonos );
			3: Consultar( Placas, Marcas, Nombres, Telefonos );
		FinSegun
	Hasta Que Opcion == 4;
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
