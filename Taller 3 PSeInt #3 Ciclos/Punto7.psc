//---//---//---//---//---//---//---//---//---//---//
// El parqueadero "El guardi�n" presta sus servicios de parqueadero nocturno para los usuarios del barrio y requiere una aplicaci�n que permita registrar los veh�culos que se cuidan en estas instalaciones.
// Se sugiere que el parqueadero tenga los atributos del veh�culo como son, placa y marca, y los datos del cliente como son nombre completo y n�mero de tel�fono.
// Para cada veh�culo se debe permitir la opci�n de ingresar al parqueadero, retirar del parqueadero y consultar si un veh�culo se encuentra en el parqueadero.
// Recuerde que el sistema debe terminar cuando el usuario as� lo indique.
// Tenga en presente que el parqueadero solo puede almacenar m�ximo 5 veh�culos.
//---//---//---//---//---//---//---//---//---//---//
SubProceso Ingresar( Placas, Marcas, Nombres, Telefonos )
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
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
		Escribir "No hay espacio para otro veh�culo";
		Bandera <- Verdadero;
	FinSi
	
	Placa <- "";
	si Indice < 4 Entonces
		Escribir "Por favor, ingrese la placa del veh�culo";
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
		Escribir "Esa placa ya est� registrado";
	FinSi
	
	
	si no Bandera Entonces
		Indice <- -1;
		Para i <- 0 Hasta 3 Con Paso 1 Hacer
			Si Indice < 0 & Placas[ i ] == "" Entonces
				Indice <- i;
			FinSi
		FinPara
		
		Placas[ Indice ] <- Placa;
		
		Escribir "Por favor, ingrese la marca del veh�culo";
		leer Marcas[ Indice ];
		
		Escribir "Por favor, ingrese el nombre completo";
		leer Nombres[ Indice ];
		
		Escribir "Por favor, ingrese el n�mero de tel�fono";
		leer Telefonos[ Indice ];
		
		Escribir "Los datos han sido guardados";
	FinSi	
	
	Escribir "Presione ENTER para continuar.";
	leer Ignorar;
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso Retirar( Placas, Marcas, Nombres, Telefonos )
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
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
	Escribir "Por favor, ingrese la placa del veh�culo";
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
		Escribir "Tel�fono: ",Telefonos[ Indice ];
		Escribir "Nombre: ", Nombres[ Indice ];
	FinSi
	
	si Indice < 0 Entonces
		Escribir "Esa placa no est� registrada";
	FinSi
	
	
	si Indice >= 0 Entonces
		Repetir
			Escribir "�Desea eliminar este veh�culo? [S/N]";
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
	// Definici�n de variables
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
	Escribir "Por favor, ingrese la placa del veh�culo";
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
		Escribir "Tel�fono: ",Telefonos[ Indice ];
		Escribir "Nombre: ", Nombres[ Indice ];
	FinSi
	
	si Indice < 0 Entonces
		Escribir "Esa placa no est� registrada";
	FinSi
	
	
	Escribir "Presione ENTER para continuar.";
	leer Ignorar;
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

Proceso Punto7
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
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
		
		Escribir " -> Men� <-";
		Escribir "1. Ingresar";
		Escribir "2. Retirar";
		Escribir "3. Consultar";
		Escribir "4. Salir";
		Escribir "Por favor, seleccione la opci�n deseada";
		Leer Ignorar;
		
		// Identificar la selecci�n
		Opcion <- 0;
		si Ignorar == "1" Entonces Opcion <- 1; FinSi
		si Ignorar == "2" Entonces Opcion <- 2; FinSi
		si Ignorar == "3" Entonces Opcion <- 3; FinSi
		si Ignorar == "4" Entonces Opcion <- 4; FinSi
		
		// Ejecutar la opci�n selecionada
		Segun Opcion Hacer
			1: Ingresar( Placas, Marcas, Nombres, Telefonos );
			2: Retirar( Placas, Marcas, Nombres, Telefonos );
			3: Consultar( Placas, Marcas, Nombres, Telefonos );
		FinSegun
	Hasta Que Opcion == 4;
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
