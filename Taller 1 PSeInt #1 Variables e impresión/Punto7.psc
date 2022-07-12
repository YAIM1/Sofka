Proceso Punto7
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Peso Como Real;
	Definir Altura Como Real;
	Definir IMC Como Real;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor, ingrese su altura (en Metros)";
	Leer Altura;
	
	Escribir "Por favor, ingrese su peso (en Kilos)";
	Leer Peso;
	
	// Calcular el indice de la masa corporal
	IMC <- Peso / Altura ^ 2;
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de información
	si IMC < 18.5 Entonces
		Escribir "Bajo peso";
	FinSi
	
	si IMC >= 18.5 y IMC < 25 Entonces
		Escribir "Buen peso";
	FinSi

	si IMC >= 25 y IMC < 30 Entonces
		Escribir "Sobrepeso";
	FinSi

	si IMC >= 30 Entonces
		Escribir "Obesidad";
	FinSi
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
