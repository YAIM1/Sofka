//---//---//---//---//---//---//---//---//---//---//
// La video tienda que presta sus servicios de alquiler de películas a los usuarios del barrio el Porvenir, requiere de una aplicación que permita registrar el alquiler de las películas que adquieren sus usuarios.
// Para cada usuario se debe permitir la opción de alquilar película, consultar películas disponibles y recibir película en la video tienda con la opción de realizar anotaciones sobre estas si se llegan a presentar daños u otra novedad sobre la película.
//---//---//---//---//---//---//---//---//---//---//

import java.util.*;

public class Punto4 {
    private ArrayList<Movie> Movie = new ArrayList<Movie>();
    private ArrayList<Client> Client = new ArrayList<Client>();

    private Scanner Input = new Scanner(System.in);

    protected enum Status {
        Disponible,
        Alquilada
    }

    public Punto4() {
        Short Option = 0;
        String[] Options = { "Alquilar una película", "Consultar las películas disponibles", "Recibir una película",
                "Registrar una película", "Listar las peliculas", "Registrar un cliente",
                "Listar los clientes", "Finalizar programa" };

        do {
            Option = lib.getOption(null, null, Options);
            System.out.println();
            switch (Option + 1) {
                case 1:
                    RentMovie();
                    break;
                case 2:
                    MovieAvailable();
                    break;
                case 3:
                    ReturnMovie();
                    break;
                case 4:
                    newMovie();
                    break;
                case 5:
                    showMovie();
                    break;
                case 6:
                    newClient();
                    break;
                case 7:
                    showClient();
                    break;
            }
            System.out.println();
        } while (Option != Options.length - 1);
    }

    // Funciones generales

    private void showMovieInfo(Movie Movie) {
        System.out.println("ID: " + Movie.ID);
        System.out.println("Nombre: " + Movie.Name);
        System.out.print("Observaciones");
        if (Movie.Observations != "")
            System.out.println(Movie.Observations);
        else
            System.out.print("\n");
        if (Movie.Status == Punto4.Status.Alquilada)
            System.out.println("Alquilada: " + Movie.Client.FullName());
        System.out.println("Status: " + Movie.Status);
    }

    private void showClientInfo(Client Client) {
        System.out.println("ID: " + Client.ID);
        System.out.println("Nombres: " + Client.Name);
        System.out.println("Apellidos: " + Client.LastName);

        int Count = 0;
        String Movies = "Tiene alquiladas las peliculas";
        for (int i = 0; i < this.Movie.size(); i++) {
            Movie Movie = this.Movie.get(i);
            if (Movie.Status != Punto4.Status.Alquilada)
                continue;
            if (Movie.Client.ID != Client.ID)
                continue;
            Count = Count + 1;
            Movies = Movies + "\n\t" + Movie.Name;
        }

        if (Count > 0)
            System.out.println(Movies);
    }

    // Opciones elegibles

    private void newMovie() {
        Movie Movie = new Movie();
        this.Movie.add(Movie);
        Movie.ID = this.Movie.size();
        System.out.println("Los datos se guardaron con exito");
        System.out.println("Presione ENTER para continuar");
        Input.nextLine();
    }

    private void showMovie() {
        if (this.Movie.size() == 0) {
            System.out.println("No hay películas registradas");
            System.out.println("Presione ENTER para continuar");
            return;
        }

        for (Movie Movie : this.Movie) {
            showMovieInfo(Movie);
            System.out.println("Presione ENTER para continuar");
            Input.nextLine();
        }
    }

    private void newClient() {
        Client Client = new Client();
        this.Client.add(Client);
        Client.ID = this.Client.size();
        System.out.println("Los datos se guardaron con exito");
        System.out.println("Presione ENTER para continuar");
        Input.nextLine();
    }

    private void showClient() {
        if (this.Client.size() == 0) {
            System.out.println("No hay clientes registrados");
            System.out.println("Presione ENTER para continuar");
            return;
        }

        for (Client Client : this.Client) {
            showClientInfo(Client);
            System.out.println("Presione ENTER para continuar");
            Input.nextLine();
        }
    }

    private void RentMovie() {
        int ID;

        // Hay películas disponibles??
        int Count = 0;
        for (Movie Movie : this.Movie) {
            if (Movie.Status != Status.Disponible)
                continue;
            Count = Count + 1;
        }

        // No hay peliculas dispoibles
        if (Count < 1) {
            System.out.println("No hay películas disponibles");
            System.out.println("Presione ENTER para continuar");
            return;
        }

        // Seleccionar la película
        Movie Movie;
        do {

            // Leer el ID de la película
            ID = lib.getInt("Por favor, digite el ID de la película", 1, this.Movie.size() - 1);

            // La película ya está alquilada??
            Movie = this.Movie.get(ID - 1);
            if (Movie.Status == Status.Alquilada) {
                System.out.println("Es película esta alquilda");
                continue;
            }

            // Opción valida
            break;

        } while (true);

        // Motrar la información
        showMovieInfo(Movie);
        System.out.println();

        // Hay clientes??
        if (this.Client.size() == 0) {
            System.out.println("No hay clientes registrados");
            System.out.println("Presione ENTER para continuar");
            return;
        }

        // Solicitar el ID del cliente
        ID = lib.getInt("Por favor, digite el ID del cliente", 1, this.Client.size());

        // Buscar al cliente
        Client Client = this.Client.get(ID - 1);
        showClientInfo(Client);

        // "Alquilar" la película
        Movie.Client = Client;
        Movie.Status = Punto4.Status.Alquilada;
        Movie.Observations = Movie.Observations + "\n- " + "El cliente (" + Client.ID
                + ") alquiló esta película";

        System.out.println("\nSe ha alquilado con exito");
        System.out.println("Presione ENTER para continuar");
        Input.nextLine();
    }

    private void MovieAvailable() {
        int Count = 0;
        for (Movie Movie : this.Movie) {
            System.out.println( Movie.Status );
            if (Movie.Status != Status.Disponible)
                continue;
            showMovieInfo(Movie);
            Count = Count + 1;
            Input.nextLine();
        }

        if (Count < 1) {
            System.out.println("No hay películas disponibles");
            System.out.println("Presione ENTER para continuar");
            Input.nextLine();
        }

    }

    private void ReturnMovie() {
        int ID;

        // Hay películas disponibles??
        int Count = 0;
        for (Movie Movie : this.Movie) {
            if (Movie.Status != Status.Alquilada)
                continue;
            Count = Count + 1;
        }

        // No hay peliculas dispoibles
        if (Count < 1) {
            System.out.println("No hay películas alquiladas");
            System.out.println("Presione ENTER para continuar");
            Input.nextLine();
            return;
        }

        // Seleccionar la película
        Movie Movie;
        do {

            // Leer el ID de la película
            ID = lib.getInt("Por favor, digite el ID de la película", 1, this.Movie.size() - 1);

            // La película ya está alquilada??
            Movie = this.Movie.get(ID - 1);
            if (Movie.Status == Status.Disponible) {
                System.out.println("Es película NO esta alquilda");
                continue;
            }

            // Opción valida
            break;

        } while (true);

        // Motrar la información
        showMovieInfo(Movie);

        // "Regresar" la película
        Movie.Status = Punto4.Status.Disponible;
        Movie.Observations = Movie.Observations + "\n- " + "El cliente (" + Movie.Client.ID
                + ") devolvió esta película";
        Movie.Client = null;

        System.out.println("\nSe ha regresado con exito");
        System.out.println("Presione ENTER para continuar");
        Input.nextLine();
    }
}