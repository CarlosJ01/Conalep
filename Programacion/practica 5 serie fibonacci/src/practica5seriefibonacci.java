import java.util.*;
/**serie de fibonacci en java programa
       * que imprima los N primeros numeros e la
        *serie Fibonacci.El primer numero de la
        *serie es 1,el segundo es 1 y cada uno
        *de los siguientes es la suma de los anteriores
        *1,1,2,3,5,8,13,21....N*/
public class practica5seriefibonacci {
    public static void main(String[] args) {
    Scanner b=new Scanner(System.in);
    int numero,fibona1,fibona2,i;
    do{
        System.out.print("introduce numero mayor que 1:");
        numero=b.nextInt();
    } while (numero<=1);
            System.out.println("los"+numero+"primeros terminos de la seri fibonacci son:");
            fibona1=1;
            fibona2=1;
            System.out.print(fibona1+"");
            for(i=2;i<=numero;i++){
                System.out.print(fibona2+"");
                fibona2=fibona1+fibona2;
                fibona1=fibona2-fibona1;
            }
    System.out.println();
    }
}





