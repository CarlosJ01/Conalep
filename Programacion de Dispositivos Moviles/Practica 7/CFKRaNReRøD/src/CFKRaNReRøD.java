import java.util.*;
public class CFKRaNReRøD{
        public static void main (String[]args){
                    double F,K,Ra,N,Re,Rø,D;
Scanner teclado= new Scanner(System.in);
System.out.println("Dame los Grados Centigrados : ");
double C= teclado.nextDouble();
            F=( C * 9/5 )+32;
            System.out.println("La Convercion a fahrenheit es:" + F);
             K= C +  273.15;
           System.out.println("La Convercion a Kelvin es:" + K );
             Ra= (C * 1.8000) + 491.67;
             System.out.println("La Convercion a Rankine es:" + Ra );
             N= C * 0.33000;
             System.out.println("La Convercion a Newton es:" + N );
             Re= C * 0.80000;
             System.out.println("La Convercion a Réaumur es:" + Re );
             Rø= (C * 0.52500) + 7.50;
             System.out.println("La Convercion a Rømer es:" + Rø );
             D= (C * 1.5000)-100.00;
             System.out.println("La Convercion a Rømer es:" + D );
        }
}