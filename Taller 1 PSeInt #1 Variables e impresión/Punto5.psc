//---//---//---//---//---//---//---//---//---//---//
// Realizar un programa el cual solicite el nombre de su mascota, edad de la mascota, el tipo de mascota y su nombre completo.
// Al finalizar el sistema debe e imprimir en pantalla el siguiente mensaje: [Nombre de Mascota] es un(a) [Tipo de Mascota], el cual, tiene [Edad de la Mascota] a�os de edad y [Nombre Completo] es actualmente su due�o(a).
//---//---//---//---//---//---//---//---//---//---//
Algoritmo Punto5
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	Definir Nombre Como Caracter;
	Definir Apellidos como Caracter;
	
	Definir MascotaNombre como Caracter;
	Definir MascotaEdad Como Entero;
	Definir MascotaTipo Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Por favor escriba el nombre de su mascota:";
	Leer MascotaNombre;
	
	Escribir "Por favor escriba la edad (en A�os) de su mascota:";
	Leer MascotaEdad;
	
	Escribir "Por favor escriba el tipo de la mascota (Ej: gato):";
	Leer MascotaTipo;

	Escribir "Por favor escriba sus nombres:";
	Leer Nombre;
	
	Escribir "Por favor escriba sus apellidos:";
	Leer Apellidos;
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de informaci�n
	Limpiar Pantalla;
	Escribir MascotaNombre, " es un(a) ", MascotaTipo, ", el cual, tiene ", MascotaEdad, " a�os de edad y ", Nombre, " ", Apellidos, " es actualmente su due�o(a).";
	//---//---//---//---//---//---//---//---//---//---//
FinAlgoritmo
