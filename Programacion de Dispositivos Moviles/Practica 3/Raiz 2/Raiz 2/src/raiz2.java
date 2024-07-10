
import java.awt.*;

import javax.swing.JApplet;



public class raiz2 extends JApplet {

   int numero;

    public void init() {
        numero=81;

    }
    public void paint(Graphics screen){
        Graphics2D Screen2D=(Graphics2D)screen;
        Screen2D.drawString("La raiz cuadrada de "
                + numero
                +" es "
                + Math.sqrt (numero),5,50
                );
    }
}
