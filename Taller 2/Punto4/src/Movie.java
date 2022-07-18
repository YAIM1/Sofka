import java.util.Scanner;

public class Movie {
    protected int ID;
    protected String Name;
    protected Punto4.Status Status;
    protected Client Client;
    protected String Observations = "";

    public Movie() {
        Scanner Input = new Scanner(System.in);

        System.out.println("Por favor, ingrese el nombre de la película");
        this.Name = Input.nextLine();

        this.Status = Punto4.Status.Disponible;
    }
}