import java.util.*;
public class promediodevariosnumeros {
    public static void main(String[] args) {
        double A1,A2,A3,A4,promedio;
        Scanner T=new Scanner(System.in);
        System.out.println("dame la calificacion uno");
        A1=T.nextDouble();
        System.out.println("dame la calificacion dos");
        A2=T.nextDouble();
        System.out.println("dame la calificacion tres");
        A3=T.nextDouble();
        System.out.println("dame la calificacion cuatro");
        A4=T.nextDouble();
        promedio=(A1+A2+A3+A4)/4;
        System.out.println("el promedio es:"+promedio);    
    }

}
