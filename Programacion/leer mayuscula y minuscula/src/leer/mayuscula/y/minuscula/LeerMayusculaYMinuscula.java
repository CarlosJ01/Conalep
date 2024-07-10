package leer.mayuscula.y.minuscula;
import javax.swing.JOptionPane;
public class LeerMayusculaYMinuscula {
public static int Mayuscula(String cadena){
        int numero=0; 
     for (int i=0;i<cadena.length();i++){
         if(cadena.charAt(i)>=65 && cadena.charAt (i)<=90){
             numero ++;
             }}
     return numero;
    }
     public static int Minuscula (String cadena){
int numero=0;
for (int i=0;i<cadena.length();i ++){
if(cadena.charAt(i)>=95 && cadena.charAt (i)<=122){
numero ++;
}}
return numero;
}                     
    public static void main(String[] args) {
String entrada =JOptionPane.showInputDialog(null,"ingresa una cadena de texto");
JOptionPane.showMessageDialog (null,"el numero de Mayusculas de la cadena es"+ Mayuscula(entrada));
JOptionPane.showMessageDialog (null,"el numero de Minusculas de la cadena es"+ Minuscula(entrada));
}}