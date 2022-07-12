//---//---//---//---//---//---//---//---//---//---//
// La Secretaría de Salud Municipal requiere de una aplicación que le permita calcular el IMC (Índice de masa corporal) y requiere los datos peso en kilogramos y estatura en metros Para cada persona encuestada adicional a los datos suministrados, debe mostrar el resultado para cada uno y establecer en qué rango se encuentra (bajo peso, normal, sobrepeso y obeso).
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto7
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Peso Como Real;
	Definir Altura Como Real;
	Definir IMC Como Real;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor, ingrese su altura (Metros)";
	Leer Altura;
	
	Escribir "Por favor, ingrese su peso (Kilos)";
	Leer Peso;
	
	// Calcular el indice de la masa corporal
	IMC <- Peso / Altura ^ 2;
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de información
	si IMC < 18.5 Entonces
		Escribir "Su peso es bajo peso";
	FinSi
	
	si IMC >= 18.5 y IMC < 25 Entonces
		Escribir "Su peso es normal";
	FinSi
	
	si IMC >= 25 y IMC < 30 Entonces
		Escribir "Su peso es sobrepeso";
	FinSi
	
	si IMC >= 30 Entonces
		Escribir "Su peso es obesidad";
	FinSi
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
