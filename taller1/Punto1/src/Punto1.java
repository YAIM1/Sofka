
//---//---//---//---//---//---//---//---//---//---//
// Realizar un programa el cual solicite su nombre y apellidos.
//---//---//---//---//---//---//---//---//---//---//
import java.util.Scanner;

public class Punto1 {
    private String Name;
    private String LastName;

    public Punto1() {
        Scanner Input = new Scanner( System.in );

        System.out.print("Por favor, Ingrese sus nombres: ");
        this.Name = Input.nextLine();

        System.out.print("Por favor, Ingrese sus apellidos: ");
        this.LastName = Input.nextLine();
    }
}
