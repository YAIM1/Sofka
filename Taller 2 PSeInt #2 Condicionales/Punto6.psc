//---//---//---//---//---//---//---//---//---//---//
// El taller de motos "El Maquinista" recibe motocicletas de alto cilindraje para realizar las respectivas revisiones y requiere una aplicación que le permita registrar los servicios generados a sus clientes.
// Para cada motocicleta se debe tener registro del ingreso al taller y las observaciones por parte del cliente.
// También debe existir registro de salida del taller con las novedades y otra de arreglos hechos por el mecánico en caso de que se requiera inventariar cambios repuestos en la motocicleta al entregarla.
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto6
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir IngresoRegistro Como Entero;
	Definir IngresoObservaciones Como Caracter;
	
	Definir SalidaRegistro Como Entero;
	Definir SalidaObservaciones Como Caracter;
	
	Definir Opcion Como Caracter;
	Definir Inventario Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Ingreso de datos
	Escribir "Ingrese el registro de ingreso";
	Leer IngresoRegistro;
	
	Escribir "Ingrese las observaciones de ingreso";
	Leer IngresoObservaciones;
	
	Escribir "Ingrese el registro de salida";
	Leer SalidaRegistro;
	
	Escribir "Ingrese las observaciones de salida";
	Leer SalidaObservaciones;
	
	Escribir "Se usó algó del inventario [ S/N ]";
	Leer Opcion;

	si Opcion == "S" o Opcion == "s" Entonces
		Escribir "Ingrese lo usado del inventario";
		Leer Inventario;
	FinSi
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
