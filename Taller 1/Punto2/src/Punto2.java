
//---//---//---//---//---//---//---//---//---//---//
// Realizar un programa el cual solicite su nombre, apellidos, edad y estatura.
//---//---//---//---//---//---//---//---//---//---//

import java.util.Scanner;

public class Punto2 {
    private String Name;
    private String LastName;
    private int Age;
    private float Heigth;

    public Punto2() {
        Scanner Input = new Scanner(System.in);

        System.out.print("Por favor, Ingrese sus nombres: ");
        this.Name = Input.nextLine();

        System.out.print("Por favor, Ingrese sus apellidos: ");
        this.LastName = Input.nextLine();

        this.Age = lib.getInt("Por favor, Ingrese su edad", 0, Integer.MAX_VALUE);

        this.Heigth = lib.getFloat("Por favor, Ingrese su altura (metros)", (float) 0, Float.MAX_VALUE);
    }
}
