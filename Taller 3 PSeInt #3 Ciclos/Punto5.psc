//---//---//---//---//---//---//---//---//---//---//
// Utilizando el ciclo que usted desee, crear un menú de ejecución infinita hasta que el usuario desee terminar dicho ciclo.
// 
// Menú de usuario
// 1. Captura nombre
// 2. Saludar persona
// 3. Salir del sistema
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto5
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Opcion Como Entero;
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de información
	Repetir
		Limpiar Pantalla;
		
		Escribir "Menú de usuario";
		Escribir "1. Captura nombre";
		Escribir "2. Saludar persona";
		Escribir "3. Salir del sistema";
		Escribir "Por favor, seleccione la opción deseada";
		Leer Opcion;
	Hasta Que Opcion == 3;
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
