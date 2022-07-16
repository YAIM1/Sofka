//---//---//---//---//---//---//---//---//---//---//
// El profesor de geometría está explicando a sus estudiantes las fórmulas para calcular el área de diferentes figuras geométricas, para ello requiere una aplicación que le facilite el ejercicio solicitándole los valores al estudiante.
// La aplicación debe permitir que el estudiante seleccione si desea calcular el área de un rectángulo, triángulo o trapecio.
// No olvide solicitar los datos necesarios para realizar cada cálculo y mostrar su respectivo resultado.
//---//---//---//---//---//---//---//---//---//---//
SubProceso AreaRectangulo( )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Base Como Real;
	Definir Altura Como Real;	
	Definir Resultar Como Real;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor, ingrese el valor de la base";
	Leer Base;
	
	Escribir "Por favor, ingrese el valor de la altura";
	Leer Altura;
	
	Escribir "El área del rectángulo es de ", Base * Altura;
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso AreaTriangulo( )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Base Como Real;
	Definir Altura Como Real;
	Definir Resultar Como Real;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor, ingrese el valor de la base";
	Leer Base;
	
	Escribir "Por favor, ingrese el valor de la altura";
	Leer Altura;
	
	Escribir "El área del triángulo es de ", Base * Altura / 2;
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

SubProceso AreaTrapecio( )
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Base Como Real;
	Definir Altura Como Real;
	Definir Techo Como Real;
	Definir Resultar Como Real;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor, ingrese el valor de la base";
	Leer Base;
	
	Escribir "Por favor, ingrese el valor de la altura";
	Leer Altura;
	
	Escribir "Por favor, ingrese el valor del lado superior";
	Leer Techo;
	
	Escribir "El área del trapecio es de ", ( Base + Techo ) * Altura / 2;
	//---//---//---//---//---//---//---//---//---//---//
FinSubProceso

Proceso Punto9
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Opcion Como Entero;
	Definir Ignorar Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Mostrar las opciones disponibles
	Escribir " -> Calcular el área de un... <- ";
	Escribir "1. Rectángulo";
	Escribir "2. Triángulo ( Rectangulo )";
	Escribir "3. Trapecio";
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
		1: AreaRectangulo( );
		2: AreaTriangulo( );
		3: AreaTrapecio( );
		De Otro Modo:
			Escribir "Opción invalida";
	FinSegun
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
