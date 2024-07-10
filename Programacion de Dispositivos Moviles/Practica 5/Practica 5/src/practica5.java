import java.util.*;
public class practica5 {
    public static void main(String[] args) {
Scanner teclado= new Scanner(System.in);
System.out.println("a:");
double a= teclado.nextDouble();
System.out.println("b:");
double b= teclado.nextDouble();
System.out.println("c:");
double c= teclado.nextDouble();
double X1;
double X2;
if(Math.pow(b,2)-(4*a*c)>=0){
X1=(-(b)+ Math.sqrt((b*b)-(4*a*c)))/(2*a);
X2=(-(b)- Math.sqrt((b*b)-(4*a*c)))/(2*a);
System.out.println("Solución X1:"+X1);
System.out.println("Solución X2:"+X2);
}
else {
    System.out.println("Solucion Compleja");
}
}
}