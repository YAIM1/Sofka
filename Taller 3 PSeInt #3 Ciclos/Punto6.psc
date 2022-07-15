//---//---//---//---//---//---//---//---//---//---//
// Se est� creando una aplicaci�n que va a estar conectada con un prototipo que permita almacenar contactos telef�nicos en el dispositivo.
// Para ello cada contacto debe contener nombre completo, tel�fono y organizaci�n.
// Se requiere que la aplicaci�n permita a�adir 3 contactos verificando que el n�mero no est� almacenado, buscar contactos almacenados y eliminar contactos si el usuario lo requiere.
// Recuerde que el sistema debe terminar cuando el usuario as� lo indique.
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto6
	//---//---//---//---//---//---//---//---//---//---//
	// Definici�n de variables
	Definir Opcion Como Entero;
	Definir Ignorar Como Cadena;
	Definir Bandera Como Logico;
	
	Definir Indice Como Entero;
	Definir Nombre Como Cadena;
	Definir Telefono Como Cadena;
	Definir Organizacion Como Cadena;

	Definir Nombre1 Como Cadena;
	Definir Telefono1 Como Cadena;
	Definir Organizacion1 Como Cadena;
	
	Definir Nombre2 Como Cadena;
	Definir Telefono2 Como Cadena;
	Definir Organizacion2 Como Cadena;
	
	Definir Nombre3 Como Cadena;
	Definir Telefono3 Como Cadena;
	Definir Organizacion3 Como Cadena;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Indice <- 0;
	
	Nombre1 <- "";
	Telefono1 <- "";
	Organizacion1 <- "";
	
	Nombre2 <- "";
	Telefono2 <- "";
	Organizacion2 <- "";
	
	Nombre3 <- "";
	Telefono3 <- "";
	Organizacion3 <- "";
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de informaci�n
	Repetir
		Limpiar Pantalla;
		
		Escribir " -> Contactos <- ";
		Escribir "1. A�adir";
		Escribir "2. Buscar";
		Escribir "3. Eliminar";
		Escribir "4. Salir";
		Escribir "Por favor, seleccione la opci�n deseada";
		Leer Opcion;
		
		Bandera <- Falso;
		Segun Opcion Hacer
			1:
				si Indice >= 3 Entonces
					Escribir "No hay espacio para otro contacto";
					Bandera <- Verdadero;
				FinSi
				
				si Indice < 3 Entonces
					Escribir "Por favor, ingrese el nuevo n�mero de tel�fono";
					leer Telefono;
				FinSi
				
				
				Bandera <- Bandera | Telefono == Telefono1;
				Bandera <- Bandera | Telefono == Telefono2;
				Bandera <- Bandera | Telefono == Telefono3;
				
				
				si Bandera & Indice < 3 Entonces
					Escribir "Ese n�mero ya est� registrado";
				FinSi
				
				
				si no Bandera Entonces
					Indice <- Indice + 1;
					
					Escribir "Por favor, ingrese el nombre completo";
					leer Nombre;
					
					Escribir "Por favor, ingrese el nombre de la organizaci�n";
					leer Organizacion;
					
					Escribir "El contacto ha sido guardado";
				FinSi
				
				
				si no Bandera & Nombre1 == "" Entonces
					Bandera <- Verdadero;
					Nombre1 <- Nombre;
					Telefono1 <- Telefono;
					Organizacion1 <- Organizacion;
				FinSi
				
				si no Bandera & Nombre2 == "" Entonces
					Bandera <- Verdadero;
					Nombre2 <- Nombre;
					Telefono2 <- Telefono;
					Organizacion2 <- Organizacion;
				FinSi
				
				si no Bandera & Nombre3 == "" Entonces
					Bandera <- Verdadero;
					Nombre3 <- Nombre;
					Telefono3 <- Telefono;
					Organizacion3 <- Organizacion;
				FinSi
				
				Escribir "Presione ENTER para continuar.";
				leer Ignorar;
			2:
				Escribir "Por favor, ingrese el n�mero de tel�fono a buscar";
				leer Telefono;
				
				Si Telefono == Telefono1 Entonces
					Bandera <- Verdadero;
					Nombre <- Nombre1;
					Organizacion <- Organizacion1;
				FinSi
				
				Si Telefono == Telefono2 Entonces
					Bandera <- Verdadero;
					Nombre <- Nombre2;
					Organizacion <- Organizacion2;
				FinSi
				
				Si Telefono == Telefono3 Entonces
					Bandera <- Verdadero;
					Nombre <- Nombre3;
					Organizacion <- Organizacion3;
				FinSi
				
				
				si Bandera Entonces
					Escribir "Tel�fono: ",Telefono;
					Escribir "Nombre: ", Nombre;
					Escribir "Organizacion: ", Organizacion;
				FinSi
				
				si no Bandera Entonces
					Escribir "Ese n�mero no est� registrado";
				FinSi
				
				
				Escribir "Presione ENTER para continuar.";
				leer Ignorar;
			3:
				Escribir "Por favor, ingrese el n�mero de tel�fono a eliminar";
				leer Telefono;
				
				
				Si Telefono == Telefono1 Entonces
					Bandera <- Verdadero;
					Opcion <- 1;
					
					Nombre <- Nombre1;
					Organizacion <- Organizacion1;
				FinSi
				
				Si Telefono == Telefono2 Entonces
					Bandera <- Verdadero;
					Opcion <- 2;
					
					Nombre <- Nombre2;
					Organizacion <- Organizacion2;
				FinSi
				
				Si Telefono == Telefono3 Entonces
					Bandera <- Verdadero;
					Opcion <- 3;
					
					Nombre <- Nombre3;
					Organizacion <- Organizacion3;
				FinSi
				
				
				si Bandera Entonces
					Escribir "Tel�fono: ",Telefono;
					Escribir "Nombre: ", Nombre;
					Escribir "Organizacion: ", Organizacion;
				FinSi
				
				si no Bandera Entonces
					Escribir "Ese n�mero no est� registrado";
				FinSi
				
				
				si Bandera Entonces
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
						
						Indice <- Indice - 1;
						
						si Opcion == 1 Entonces
							Nombre1 <- "";
							Telefono1 <- "";
							Organizacion1 <- "";
						FinSi
						
						si Opcion == 2 Entonces
							Nombre2 <- "";
							Telefono2 <- "";
							Organizacion2 <- "";
						FinSi
						
						si Opcion == 3 Entonces
							Nombre3 <- "";
							Telefono3 <- "";
							Organizacion3 <- "";
						FinSi
						
						Escribir "El contacto ha sido eliminado";
					FinSi
				FinSi
				
				Escribir "Presione ENTER para continuar.";
				leer Ignorar;
		FinSegun
	Hasta Que Opcion == 4;
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
