
//---//---//---//---//---//---//---//---//---//---//
// Realizar un programa el cual solicite el nombre de una ciudad capital y el país.
// Al finalizar debe imprimir en pantalla el siguiente mensaje "La ciudad [Nombre de la Ciudad], es la capital del país [Nombre del País]
//---//---//---//---//---//---//---//---//---//---//

import java.util.Scanner;

public class Punto4 {
    private String City;
    private String Country;

    public Punto4() {
        Scanner Input = new Scanner(System.in);

        System.out.print("Por favor, ingrese el nomber de la ciudad capital: ");
        City = Input.nextLine();

        System.out.print("Por favor, ingrese el nomber del país: ");
        Country = Input.nextLine();

        System.out.print("La ciudad " + City + ", es la capital del país " + Country);
    }
}
