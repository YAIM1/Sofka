
//---//---//---//---//---//---//---//---//---//---//
// Realizar un programa en el cual se solicite el nombre, apellidos y edad de la persona.
// Si la persona es mayor o igual a 18 años, entonce se deberá imprimir en pantalla [Nombre completo] usted es mayor de edad, por lo tanto puede entrar a la fiesta.
// Si la edad de la persona es menor que 18 años, entonces, deberá imprimirse el siguiente mensaje: [Nombre completo] usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.
//---//---//---//---//---//---//---//---//---//---//

import java.util.Scanner;

public class Punto3 {
    private int Age;
    private String Name;
    private String LastName;

    public Punto3() {
        Scanner Input = new Scanner(System.in);

        System.out.print("Por favor, Ingrese sus nombres: ");
        this.Name = Input.nextLine();

        System.out.print("Por favor, Ingrese sus apellidos: ");
        this.LastName = Input.nextLine();

        Age = lib.getInt("Por favor, Ingrese su edad", 0, Integer.MAX_VALUE);
        if (Age < 18)
            System.out.println(Name + " " + LastName
                    + " usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa");
        if (Age > 17)
            System.out
                    .println(Name + " " + LastName + " usted es mayor de edad, por lo tanto puede entrar a la fiesta");
    }
}
