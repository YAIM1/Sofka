//---//---//---//---//---//---//---//---//---//---//
// Se est� creando una aplicaci�n que va a estar conectada con un prototipo que permita almacenar contactos telef�nicos en el dispositivo.
// Para ello cada contacto debe contener nombre completo, tel�fono y organizaci�n.
// Se requiere que la aplicaci�n permita a�adir 3 contactos verificando que el n�mero no est� almacenado, buscar contactos almacenados y eliminar contactos si el usuario lo requiere.
// Recuerde que el sistema debe terminar cuando el usuario as� lo indique.
//---//---//---//---//---//---//---//---//---//---//
SubProceso Anadir( Nombres, Telefonos, Organizaciones )
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	Definir Bandera Como Logico;
	Definir Ignorar Como Caracter;
	Definir Indice Como Entero;
	Definir i Como Entero;
	
	Definir Telefono Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Indice <- 0;
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		si Telefonos[ i ] <> "" Entonces
			Indice <- Indice + 1;
		FinSi
	FinPara
	
	Bandera <- Falso;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	si Indice >= 3 Entonces
		Escribir "No hay espacio para otro contacto";
		Bandera <- Verdadero;
	FinSi
	
	Telefono <- "";
	si Indice < 3 Entonces
		Escribir "Por favor, ingrese el nuevo n�mero de tel�fono";
		leer Telefono;
	FinSi
	
	
	si Telefono == "" Entonces
		Escribir "Debe escribir un n�mero";
		Bandera <- Verdadero;
	FinSi

	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		Bandera <- Bandera | Telefono == Telefonos[ i ];
	FinPara
	
	si Bandera & Indice < 3 & Telefono <> "" Entonces
		Escribir "Ese n�mero ya est� registrado";
	FinSi
	
	si no Bandera Entonces
		Indice <- -1;
		Para i <- 0 Hasta 2 Con Paso 1 Hacer
			Si Indice < 0 & Telefonos[ i ] == "" Entonces
				Indice <- i;
			FinSi
		FinPara
		
		Telefonos[ Indice ] <- Telefono;
		
		Escribir "Por favor, ingrese el nombre completo";
		leer Nombres[ Indice ];
		
		Escribir "Por favor, ingrese el nombre de la organizaci�n";
		leer Organizaciones[ Indice ];
		
		Escribir "El contacto ha sido guardado";
	FinSi
	
	
	Escribir "Presione ENTER para continuar.";
	leer Ignorar;
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso Buscar( Nombres, Telefonos, Organizaciones )
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	Definir Ignorar Como Caracter;
	Definir Indice Como Entero;
	Definir i Como Entero;
	
	Definir Telefono Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor, ingrese el n�mero de tel�fono a buscar";
	leer Telefono;
	
	Indice <- -1;
	si Telefono <> "" Entonces
		Para i <- 0 Hasta 2 Con Paso 1 Hacer
			Si Telefono == Telefonos[ i ] Entonces
				Indice <- i;
			FinSi
		FinPara
	FinSi
	
	si Indice >= 0 Entonces
		Escribir "Nombre: ", Nombres[ Indice ];
		Escribir "Tel�fono: ",Telefonos[ Indice ];
		Escribir "Organizacion: ", Organizaciones[ Indice ];
	FinSi
	
	si Indice < 0 Entonces
		Escribir "Ese n�mero no est� registrado";
	FinSi
	
	
	Escribir "Presione ENTER para continuar.";
	leer Ignorar;
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso Eliminar( Nombres, Telefonos, Organizaciones )
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	Definir Bandera Como Logico;
	Definir Ignorar Como Caracter;
	Definir Indice Como Entero;
	Definir i Como Entero;
	
	Definir Telefono Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Indice <- 0;
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		si Telefonos[ i ] <> "" Entonces
			Indice <- Indice + 1;
		FinSi
	FinPara
	
	Bandera <- Falso;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor, ingrese el n�mero de tel�fono a eliminar";
	leer Telefono;
	
	
	Indice <- -1;
	si Telefono <> "" Entonces
		Para i <- 0 Hasta 2 Con Paso 1 Hacer
			si Indice < 0 & Telefonos[ i ] == Telefono Entonces
				Indice <- i;
			FinSi
		FinPara
	FinSi
	
	
	si Indice >= 0 Entonces
		Escribir "Nombre: ", Nombres[ Indice ];
		Escribir "Tel�fono: ",Telefonos[ Indice ];
		Escribir "Organizacion: ", Organizaciones[ Indice ];
	FinSi
	
	si Indice < 0 Entonces
		Escribir "Ese n�mero no est� registrado";
	FinSi
	
	
	si Indice >= 0 Entonces
		Escribir "�Desea eliminar este contacto? [S/N]";
		Repetir
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
			Nombres[ Indice ] <- "";
			Telefonos[ Indice ] <- "";
			Organizaciones[ Indice ] <- "";
			
			Escribir "El contacto ha sido eliminado";
		FinSi
	FinSi
	
	Escribir "Presione ENTER para continuar.";
	leer Ignorar;	
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

Proceso Punto6
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	Definir Opcion Como Entero;
	Definir Ignorar Como Cadena;
	
	Definir i Como Entero;
	
	Definir Nombres Como Cadena;
	Definir Telefonos Como Cadena;
	Definir Organizaciones Como Cadena;
	
	Dimension Nombres[ 3 ];
	Dimension Telefonos[ 3 ];
	Dimension Organizaciones[ 3 ];
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		Telefonos[ i ] <- "";
	FinPara
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Repetir
		Limpiar Pantalla;
		
		Escribir " -> Contactos <- ";
		Escribir "1. A�adir";
		Escribir "2. Buscar";
		Escribir "3. Eliminar";
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
			1: Anadir( Nombres, Telefonos, Organizaciones );
			2: Buscar( Nombres, Telefonos, Organizaciones );
			3: Eliminar( Nombres, Telefonos, Organizaciones );
		FinSegun
	Hasta Que Opcion == 4;
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
