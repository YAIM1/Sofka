
//---//---//---//---//---//---//---//---//---//---//
// Realizar un programa en el cual se solicite la edad de una persona.
// Si la persona es mayor o igual a 18 años, deberá mostrar en pantalla: Usted es mayor de edad.
//---//---//---//---//---//---//---//---//---//---//

public class Punto1 {
    private int Age;

    public Punto1() {
        Age = lib.getInt("Por favor, Ingrese su edad", 0, Integer.MAX_VALUE);
        if (Age > 17)
            System.out.println("Usted es mayor de edad");
    }
}
