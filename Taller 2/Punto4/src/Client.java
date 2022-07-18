import java.util.Scanner;

public class Client {
    protected int ID;
    protected String Name;
    protected String LastName;

    public Client() {
        Scanner Input = new Scanner(System.in);

        System.out.print("Por favor, Ingrese sus nombres: ");
        this.Name = Input.nextLine();

        System.out.print("Por favor, Ingrese sus apellidos: ");
        this.LastName = Input.nextLine();
    }

    public String FullName(){
        return this.Name + " " + this.LastName;
    }
}