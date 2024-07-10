import java.util.Scanner;
public class factorial {
    public static void main(String[] args) {
        int num,factorial=1;
        Scanner leer=new Scanner(System.in);
        System.out.print("ingrese numero");
        num=leer.nextInt();
        for(int i=1; i<=num; i++){
       factorial=factorial*i  ;
        }
    System.out.println("factorialde"+num+"es"+factorial);
}}
