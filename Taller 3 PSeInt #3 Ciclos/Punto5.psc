//---//---//---//---//---//---//---//---//---//---//
// Utilizando el ciclo que usted desee, crear un men� de ejecuci�n infinita hasta que el usuario desee terminar dicho ciclo.
// 
// Men� de usuario
// 1. Captura nombre
// 2. Saludar persona
// 3. Salir del sistema
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto5
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	Definir Opcion Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de informaci�n
	Repetir
		Limpiar Pantalla;
		
		Escribir "Men� de usuario";
		Escribir "1. Captura nombre";
		Escribir "2. Saludar persona";
		Escribir "3. Salir del sistema";
		Escribir "Por favor, seleccione la opci�n deseada";
		Leer Opcion;
	Hasta Que Opcion == 3;
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
