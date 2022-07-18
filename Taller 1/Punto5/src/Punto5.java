
//---//---//---//---//---//---//---//---//---//---//
// Realizar un programa el cual solicite el nombre de su mascota, edad de la mascota, el tipo de mascota y su nombre completo.
// Al finalizar el sistema debe e imprimir en pantalla el siguiente mensaje: [Nombre de Mascota] es un(a) [Tipo de Mascota], el cual, tiene [Edad de la Mascota] años de edad y [Nombre Completo] es actualmente su dueño(a).
//---//---//---//---//---//---//---//---//---//---//

import java.util.Scanner;

public class Punto5 {
    private String PetName;
    private int PetAge;
    private String PetType;
    private String OwnerName;
    private String OwnerLastName;

    private Scanner Input = new Scanner(System.in);

    public Punto5() {
        System.out.print("Por favor, ingrese el nombre de la mascota: ");
        PetName = this.Input.nextLine();

        this.PetAge = lib.getInt("Por favor, ingrese la edad de la mascota", 1, Integer.MAX_VALUE);

        String[] Options = { "Perro", "Gato", "Lagarto", "Reptil", "Otro" };
        short Type = lib.getOption(">> Tipos de mascotas <<", "Por favor, seleccione el tipo de mascota", Options);
        if (Type == Options.length - 1) {
            System.out.print("Por favor, ingrese el tipo de mascota: ");
            this.PetType = this.Input.nextLine();
        } else
            this.PetType = Options[Type];

        System.out.print("Por favor, Ingrese los nombres del propietario: ");
        this.OwnerName = this.Input.nextLine();

        System.out.print("Por favor, Ingrese los apellidos del propietario: ");
        this.OwnerLastName = this.Input.nextLine();

        System.out.print(PetName + " es un(a) " + PetType + ", el cual, tiene " + PetAge + " años de edad y "
                + OwnerName + " " + OwnerLastName + " es actualmente su dueño(a).");
    }
}
