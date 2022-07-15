//---//---//---//---//---//---//---//---//---//---//
// El profesor de geometr�a est� explicando a sus estudiantes las f�rmulas para calcular el �rea de diferentes figuras geom�tricas, para ello requiere una aplicaci�n que le facilite el ejercicio solicit�ndole los valores al estudiante.
// La aplicaci�n debe permitir que el estudiante seleccione si desea calcular el �rea de un rect�ngulo, tri�ngulo o trapecio.
// No olvide solicitar los datos necesarios para realizar cada c�lculo y mostrar su respectivo resultado.
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto9
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	Definir Opcion Como Entero;
	
	Definir Base Como Real;
	Definir Altura Como Real;
	Definir Techo Como Real;
	
	Definir Resultar Como Real;
	//---//---//---//---//---//---//---//---//---//---//
	// Mostrar las opciones disponibles
	Escribir " -> Calcular el �rea de un... <- ";
	Escribir "1. Rect�ngulo";
	Escribir "2. Tri�ngulo ( Rectangulo )";
	Escribir "3. Trapecio";
	Escribir "Por favor, seleccione la opci�n deseada";
	Leer Opcion;
	
	// Identificar la opci�n selecionada
	Segun Opcion Hacer
		1:
			Escribir "Por favor, ingrese el valor de la base";
			Leer Base;
			
			Escribir "Por favor, ingrese el valor de la altura";
			Leer Altura;
			
			Escribir "El �rea del rectangulo es de ", Base * Altura;
		2:
			Escribir "Por favor, ingrese el valor de la base";
			Leer Base;
			
			Escribir "Por favor, ingrese el valor de la altura";
			Leer Altura;
			
			Escribir "El �rea del triangulo es de ", Base * Altura / 2;
		3:
			Escribir "Por favor, ingrese el valor de la base";
			Leer Base;
			
			Escribir "Por favor, ingrese el valor de la altura";
			Leer Altura;
			
			Escribir "Por favor, ingrese el valor del lado superior";
			Leer Techo;
			
			Escribir "El �rea del trapecio es de ", ( Base + Techo ) * Altura / 2;
		De Otro Modo:
			Escribir "Opci�n invalida";
	FinSegun
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
