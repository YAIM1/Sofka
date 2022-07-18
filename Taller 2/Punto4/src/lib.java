import java.util.Scanner;

public class lib {
    public static Scanner Input = new Scanner(System.in);

    public static Integer getInt(String Msg, Integer Min, Integer Max) {
        int Number;
        do {
            try {
                System.out.print(Msg + ": ");
                Number = Input.nextInt();
            } catch (Exception e) {
                Number = Integer.MIN_VALUE;
                Input.nextLine();
                System.out.println("Por favor, ingrese un número mayor o igual a " + Min + " y menor o igual a " + Max);
            }
        } while (Number < Min || Number > Max);
        return Number;
    }

    public static float getFloat(String Msg, Float Min, Float Max) {
        Float Number;
        do {
            try {
                System.out.print(Msg + ": ");
                Number = Input.nextFloat();
            } catch (Exception e) {
                Number = Float.MIN_VALUE;
                Input.nextLine();
                System.out.println("Por favor, ingrese un número mayor o igual a " + Min + " y menor o igual a " + Max);
            }
        } while (Number < Min || Number > Max);
        return Number;
    }

    public static short getShort(String Msg, Short Min, Short Max) {
        Short Number;
        do {
            try {
                System.out.print(Msg + ": ");
                Number = Input.nextShort();
            } catch (Exception e) {
                Number = Short.MIN_VALUE;
                Input.nextLine();
                System.out.println("Por favor, ingrese un número mayor o igual a " + Min + " y menor o igual a " + Max);
            }
        } while (Number < Min || Number > Max);
        return Number;
    }

    public static short getOption(String Title, String Msg, String[] Options) {
        System.out.println(Title != null ? Title : ">> Menú <<");
        for (int i = 0; i < Options.length; i++)
            System.out.println((i + 1) + ". " + Options[i]);
        Msg = Msg != null ? Msg : "Por favor, seleccione la opción deseada";
        short Type = lib.getShort(Msg, (short) 1, (short) Options.length);
        return (short) (Type - 1);
    }
}