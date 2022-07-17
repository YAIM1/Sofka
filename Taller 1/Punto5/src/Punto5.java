
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

        do {
            try {
                System.out.print("Por favor, ingrese la edad de la mascota: ");
                this.PetAge = this.Input.nextShort();
            } catch (Exception e) {
                this.PetAge = 0;
                this.Input.nextLine();
                System.out.println("Por favor, ingrese un número mayor a cero");
            }
        } while (this.PetAge < 1);

        System.out.println(">> Tipos de mascotas <<");
        System.out.println("1. Perro");
        System.out.println("2. Gato");
        System.out.println("3. Lagarto");
        System.out.println("4. Reptil");
        System.out.println("5. Otro");
        short Type = 0;
        do {
            try {
                System.out.print("Por favor, seleccione el tipo de mascota: ");
                Type = this.Input.nextShort();
            } catch (Exception e) {
                Type = 0;
                this.Input.nextLine();
                System.out.print("Por favor, ingrese un valor valido");
            }
        } while (Type < 1 || Type > 5);
        this.Input.nextLine();
        switch (Type) {
            case 1:
                this.PetType = "Perro";
                break;
            case 2:
                this.PetType = "Gato";
                break;
            case 3:
                this.PetType = "Lagarto";
                break;
            case 4:
                this.PetType = "Reptil";
                break;
            default:
                System.out.print("Por favor, ingrese el tipo de mascota: ");
                this.PetType = this.Input.nextLine();
                break;
        }

        System.out.print("Por favor, Ingrese los nombres del propietario: ");
        this.OwnerName = this.Input.nextLine();

        System.out.print("Por favor, Ingrese los apellidos del propietario: ");
        this.OwnerLastName = this.Input.nextLine();

        System.out.print(PetName + " es un(a) " + PetType + ", el cual, tiene " + PetAge + " años de edad y "
                + OwnerName + " " + OwnerLastName + " es actualmente su dueño(a).");
    }
}
