import java.util.*;
public class SRMD{
    public static void main (String[]args){
        double S,R,M,D;
        Scanner teclado= new Scanner(System.in);
System.out.println("1° Numero:");
double N1= teclado.nextDouble();
System.out.println("2° Numero:");
double N2= teclado.nextDouble();
S=N1+N2;
R=N1-N2;
M=N1*N2;
System.out.println("La Suma es:" + S);
 System.out.println("La Resta es:" + R);
 System.out.println("La Multiplicacion es:" + M);
if (N2 != 0){
    D = N1 / N2;
     System.out.println("La Divicion es:" + D);
}
 else{
 System.out.println("La division no es Posible");
 }}}