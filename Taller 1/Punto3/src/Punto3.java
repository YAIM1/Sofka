
//---//---//---//---//---//---//---//---//---//---//
// Realizar un programa el cual solicite su nombre y apellidos, también debe capturar nombre y apellidos de su padre y madre.
// Al finalizar debe imprimir en pantalla el siguiente mensaje "Yo [Nombre Completo], soy hijo de [Nombre de la Madre] y [Nombre del Padre].
//---//---//---//---//---//---//---//---//---//---//

import java.util.Scanner;

public class Punto3 {
    private String Name;
    private String LastName;
    private String MomtherName;
    private String FatherName;

    public Punto3() {
        Scanner Input = new Scanner(System.in);

        System.out.print("Por favor, Ingrese sus nombres: ");
        this.Name = Input.nextLine();

        System.out.print("Por favor, Ingrese sus apellidos: ");
        this.LastName = Input.nextLine();

        System.out.print("Por favor, Ingrese el nombre de su madre: ");
        this.MomtherName = Input.nextLine();

        System.out.print("Por favor, Ingrese el nombre de su padre: ");
        this.FatherName = Input.nextLine();

        System.out.println("Yo " + this.Name + " " + this.LastName + ", soy hijo de " + this.MomtherName + " y "
                + this.FatherName + ".");
    }
}
