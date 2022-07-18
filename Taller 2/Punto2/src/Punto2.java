//---//---//---//---//---//---//---//---//---//---//
// Realizar un programa en el cual se solicite la edad de una persona.
// Si la persona es menor a 18 años, deberá mostrar en pantalla: Usted aún es un niño(a).
//---//---//---//---//---//---//---//---//---//---//
public class Punto2 {
    private int Age;

    public Punto2() {
        Age = lib.getInt("Por favor, Ingrese su edad", 0, Integer.MAX_VALUE);
        if (Age < 18)
            System.out.println("Usted aún es un niño(a)");
    }
}
