
//---//---//---//---//---//---//---//---//---//---//
// Realizar un programa el cual solicite su nombre, apellidos, edad y estatura.
//---//---//---//---//---//---//---//---//---//---//
import java.util.Scanner;

public class Punto2 {
    private String Name;
    private String LastName;
    private short Age;
    private float Heigth;

    public Punto2() {
        Scanner Input = new Scanner(System.in);

        System.out.print("Por favor, Ingrese sus nombres: ");
        this.Name = Input.nextLine();

        System.out.print("Por favor, Ingrese sus apellidos: ");
        this.LastName = Input.nextLine();

        do {
            try {
                System.out.print("Por favor, Ingrese su edad: ");
                this.Age = Input.nextShort();
            } catch (Exception e) {
                this.Age = 0;
                Input.nextLine();
                System.out.println("Por favor, ingrese un número mayor a cero");
            }
        } while (this.Age < 1);

        do {
            try {
                System.out.print("Por favor, Ingrese su altura: ");
                this.Heigth = Input.nextFloat();
            } catch (Exception e) {
                System.out.println("Por favor, ingrese un número mayor a cero");
                this.Heigth = 0;
                Input.nextLine();
            }
        } while (this.Heigth < 1);
    }
}
