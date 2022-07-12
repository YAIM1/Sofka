Algoritmo Punto5
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Nombre Como Caracter;
	Definir Apellidos como Caracter;
	
	Definir MascotaNombre como Caracter;
	Definir MascotaEdad Como Entero;
	Definir MascotaTipo Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor escriba el nombre de su mascota:";
	Leer MascotaNombre;
	
	Escribir "Por favor escriba la edad (en Años) de su mascota:";
	Leer MascotaEdad;
	
	Escribir "Por favor escriba el tipo de la mascota (Ej: gato):";
	Leer MascotaTipo;

	Escribir "Por favor escriba sus nombres:";
	Leer Nombre;
	
	Escribir "Por favor escriba sus apellidos:";
	Leer Apellidos;
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de información
	Limpiar Pantalla;
	Escribir MascotaNombre, " es un(a) ", MascotaTipo, ", el cual, tiene ", MascotaEdad, " años de edad y ", Nombre, " ", Apellidos, " es actualmente su dueño(a).";
	//---//---//---//---//---//---//---//---//---//---//
FinAlgoritmo
