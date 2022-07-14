//---//---//---//---//---//---//---//---//---//---//
// El parqueadero "El guardián" presta sus servicios de parqueadero nocturno para los usuarios del barrio y requiere una aplicación que permita registrar los vehículos que se cuidan en estas instalaciones.
// Se sugiere que el parqueadero tenga los atributos del vehículo como son, placa y marca, y los datos del cliente como son nombre completo y número de teléfono.
// Para cada vehículo se debe permitir la opción de ingresar al parqueadero, retirar del parqueadero y consultar si un vehículo se encuentra en el parqueadero.
// Recuerde que el sistema debe terminar cuando el usuario así lo indique.
// Tenga en presente que el parqueadero solo puede almacenar máximo 5 vehículos.
//---//---//---//---//---//---//---//---//---//---//
Proceso Punto7
	//---//---//---//---//---//---//---//---//---//---//
	// Definición de variables
	Definir Opcion Como Entero;
	Definir Ignorar Como Cadena;
	Definir Bandera Como Logico;
	
	Definir Indice Como Entero;
	Definir Placa Como Caracter;
	Definir Marca Como Caracter;
	Definir Nombre Como Caracter;
	Definir Telefono Como Caracter;

	Definir Placa1 Como Caracter;
	Definir Marca1 Como Caracter;
	Definir Nombre1 Como Caracter;
	Definir Telefono1 Como Caracter;
	
	Definir Placa2 Como Caracter;
	Definir Marca2 Como Caracter;
	Definir Nombre2 Como Caracter;
	Definir Telefono2 Como Caracter;
	
	Definir Placa3 Como Caracter;
	Definir Marca3 Como Caracter;
	Definir Nombre3 Como Caracter;
	Definir Telefono3 Como Caracter;
	
	Definir Placa4 Como Caracter;
	Definir Marca4 Como Caracter;
	Definir Nombre4 Como Caracter;
	Definir Telefono4 Como Caracter;
	
	Definir Placa5 Como Caracter;
	Definir Marca5 Como Caracter;
	Definir Nombre5 Como Caracter;
	Definir Telefono5 Como Caracter;
	//---//---//---//---//---//---//---//---//---//---//
	// Inicializar las variables
	Indice <- 0;
	
	Placa <- "";
	Placa1 <- "";
	Placa2 <- "";
	Placa3 <- "";
	Placa4 <- "";
	Placa5 <- "";
	//---//---//---//---//---//---//---//---//---//---//
	// Salida de información
	Repetir
		Limpiar Pantalla;
		
		Escribir " -> Menú <-";
		Escribir "1. Ingresar";
		Escribir "2. Retirar";
		Escribir "3. Consultar";
		Escribir "4. Salir";
		Escribir "Por favor, seleccione la opción deseada";
		Leer Opcion;
		
		Bandera <- Falso;
		Segun Opcion Hacer
			1:
				si Indice >= 5 Entonces
					Escribir "No hay espacio para otro vehículo";
					Bandera <- Verdadero;
				FinSi
				
				si Indice < 5 Entonces
					Escribir "Por favor, ingrese la placa del vehículo";
					leer Placa;
				FinSi
				
				
				si Placa == "" Entonces
					Bandera <- Verdadero;
					Escribir "Debe escribir una placa";
				FinSi				
				
				
				Bandera <- Bandera | Placa == Placa1;
				Bandera <- Bandera | Placa == Placa2;
				Bandera <- Bandera | Placa == Placa3;
				Bandera <- Bandera | Placa == Placa4;
				Bandera <- Bandera | Placa == Placa5;
				
				
				si Bandera & Indice < 5 & Placa <> "" Entonces
					Escribir "Ese número ya está registrado";
				FinSi
				
				
				si no Bandera Entonces
					Indice <- Indice + 1;
					
					Escribir "Por favor, ingrese la marca del vehículo";
					leer Marca;
					
					Escribir "Por favor, ingrese el nombre completo";
					leer Nombre;
					
					Escribir "Por favor, ingrese el número de teléfono";
					leer Telefono;
					
					Escribir "Los datos han sido guardados";
				FinSi
				
				
				si no Bandera & Placa1 == "" Entonces
					Bandera <- Verdadero;
					Placa1 <- Placa;
					Marca1 <- Marca;
					Nombre1 <- Nombre;
					Telefono1 <- Telefono;
				FinSi
				
				si no Bandera & Placa2 == "" Entonces
					Bandera <- Verdadero;
					Placa2 <- Placa;
					Marca2 <- Marca;
					Nombre2 <- Nombre;
					Telefono2 <- Telefono;
				FinSi
				
				si no Bandera & Placa3 == "" Entonces
					Bandera <- Verdadero;
					Placa3 <- Placa;
					Marca3 <- Marca;
					Nombre3 <- Nombre;
					Telefono3 <- Telefono;
				FinSi
				
				si no Bandera & Placa4 == "" Entonces
					Bandera <- Verdadero;
					Placa4 <- Placa;
					Marca4 <- Marca;
					Nombre4 <- Nombre;
					Telefono4 <- Telefono;
				FinSi
				
				si no Bandera & Placa5 == "" Entonces
					Bandera <- Verdadero;
					Placa5 <- Placa;
					Marca5 <- Marca;
					Nombre5 <- Nombre;
					Telefono5 <- Telefono;
				FinSi
				
				
				Escribir "Presione ENTER para continuar.";
				leer Ignorar;
			2:
				Escribir "Por favor, ingrese la placa del vehículo";
				leer Placa;
				
				
				si Placa == "" Entonces
					Bandera <- Verdadero;
				FinSi				
				
				
				Si no Bandera & Placa == Placa1 Entonces
					Bandera <- Verdadero;
					Opcion <- 1;
					
					Marca <- Marca1;
					Nombre <- Nombre1;
					Telefono <- Telefono1;
				FinSi
				
				Si no Bandera & Placa == Placa2 Entonces
					Bandera <- Verdadero;
					Opcion <- 2;
					
					Marca <- Marca2;
					Nombre <- Nombre2;
					Telefono <- Telefono2;
				FinSi
				
				Si no Bandera & Placa == Placa3 Entonces
					Bandera <- Verdadero;
					Opcion <- 3;
					
					Marca <- Marca3;
					Nombre <- Nombre3;
					Telefono <- Telefono3;
				FinSi
				
				Si no Bandera & Placa == Placa4 Entonces
					Bandera <- Verdadero;
					Opcion <- 4;
					
					Marca <- Marca4;
					Nombre <- Nombre4;
					Telefono <- Telefono4;
				FinSi
				
				Si no Bandera & Placa == Placa5 Entonces
					Bandera <- Verdadero;
					Opcion <- 5;
					
					Marca <- Marca5;
					Nombre <- Nombre5;
					Telefono <- Telefono5;
				FinSi
				
				
				si Bandera & Placa <> "" Entonces
					Escribir "Placa: ", Placa;
					Escribir "Marca: ", Marca;
					Escribir "Teléfono: ",Telefono;
					Escribir "Nombre: ", Nombre;
				FinSi
				
				si no Bandera Entonces
					Escribir "Esa placa no está registrada";
				FinSi
				
				
				si Bandera & Placa <> "" Entonces
					Repetir
						Escribir "¿Desea eliminar este vehículo? [S/N]";
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
							Marca1 <- "";
							Placa1 <- "";
							Nombre1 <- "";
							Telefono1 <- "";
						FinSi
						
						si Opcion == 2 Entonces
							Marca2 <- "";
							Placa2 <- "";
							Nombre2 <- "";
							Telefono2 <- "";
						FinSi
						
						si Opcion == 3 Entonces
							Marca3 <- "";
							Placa3 <- "";
							Nombre3 <- "";
							Telefono3 <- "";
						FinSi
						
						si Opcion == 4 Entonces
							Marca4 <- "";
							Placa4 <- "";
							Nombre4 <- "";
							Telefono4 <- "";
						FinSi
						
						si Opcion == 5 Entonces
							Marca5 <- "";
							Placa5 <- "";
							Nombre5 <- "";
							Telefono5 <- "";
						FinSi
						
						Escribir "Los datos han sido eliminado";
						Escribir "Presione ENTER para continuar.";
						leer Ignorar;
					FinSi
				FinSi
			3:
				Escribir "Por favor, ingrese la placa del vehículo";
				leer Placa;
				
				
				si Placa == "" Entonces
					Bandera <- Verdadero;
				FinSi				
				
				
				Si no Bandera & Placa == Placa1 Entonces
					Bandera <- Verdadero;
					Telefono <- Telefono1;
					Nombre <- Nombre1;
					Marca <- Marca1;
				FinSi
				
				Si no Bandera & Placa == Placa2 Entonces
					Bandera <- Verdadero;
					Telefono <- Telefono2;
					Nombre <- Nombre2;
					Marca <- Marca2;
				FinSi
				
				Si no Bandera & Placa == Placa3 Entonces
					Bandera <- Verdadero;
					Telefono <- Telefono3;
					Nombre <- Nombre3;
					Marca <- Marca3;
				FinSi
				
				Si no Bandera & Placa == Placa4 Entonces
					Bandera <- Verdadero;
					Telefono <- Telefono4;
					Nombre <- Nombre4;
					Marca <- Marca4;
				FinSi
				
				Si no Bandera & Placa == Placa5 Entonces
					Bandera <- Verdadero;
					Telefono <- Telefono5;
					Nombre <- Nombre5;
					Marca <- Marca5;
				FinSi
				
				
				si Bandera & Placa <> "" Entonces
					Escribir "Placa: ", Placa;
					Escribir "Marca: ", Marca;
					Escribir "Nombre: ", Nombre;
					Escribir "Teléfono: ",Telefono;
				FinSi
				
				si no Bandera & Placa <> "" Entonces
					Escribir "Esa placa no está registrada";
				FinSi
				
				
				si Placa <> "" Entonces
					Escribir "Presione ENTER para continuar.";
					leer Ignorar;
				FinSi
		FinSegun
	Hasta Que Opcion == 4;
	//---//---//---//---//---//---//---//---//---//---//
FinProceso
