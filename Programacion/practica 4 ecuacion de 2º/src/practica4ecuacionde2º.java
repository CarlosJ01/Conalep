import javax.swing.*;
public class practica4ecuacionde2º {
    public static void main(String[] args) {
     String primero,segundo,tercero;
       double a=0, b=0,c=0,x1=0,x2=0 ;
        primero=JOptionPane.showInputDialog("valor del primer termino (a)" ) ;
        segundo=JOptionPane.showInputDialog("valor del segundo termino (b)") ;
        tercero=JOptionPane.showInputDialog("valor del tercer termino (c)") ;
        a=Double.parseDouble (primero) ;
        b=Double.parseDouble (segundo) ;
        c=Double.parseDouble (tercero) ;
        x1=((-b)+ Math.sqrt((b*b)-(4*a*c)))/(2*a);
        x2=((-b)- Math.sqrt((b*b)-(4*a*c)))/(2*a);
        JOptionPane.showMessageDialog (null,"el valor de x1 es igual a" +x1) ;
        JOptionPane.showMessageDialog (null,"el valor de x2 es igual a" +x2) ;

      
    }

}
