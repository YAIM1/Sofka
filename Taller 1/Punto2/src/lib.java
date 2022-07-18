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
                System.out.println("Por favor, ingrese un número mayor que " + Min + " y menor que " + Max);
            }
        } while (Number < Min || Number > Max );
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
                System.out.println("Por favor, ingrese un número mayor que " + Min + " y menor que " + Max);
            }
        } while (Number < Min || Number > Max );
        return Number;
    }
}
