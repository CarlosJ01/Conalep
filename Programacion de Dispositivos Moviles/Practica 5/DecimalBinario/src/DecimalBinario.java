import java.io.*;
        public class DecimalBinario{
            public static void main (String[]args){
                {
    String numero;
    int len;
    double potencia;
    double suma=0;
        {
        try{
        BufferedReader br= new BufferedReader(new InputStreamReader(System.in));
        System.out.println("Ingrese numero");
        numero=br.readLine();
        len= numero.length();
        if(numero.length()>1){
        for(int i=0;i<numero.length();i++){
        len=len-1;
        char num=numero.charAt(i);
        if(num>='1'){
        potencia=Math.pow(2,len);
        double y=1*potencia;
        suma=suma+y;}}
        System.out.println("Su numero decimal es:"+suma);
        }
 else{
 System.out.println("Su numero decimal es:"+ numero.charAt(0));
 }}
  catch(Exception ex){
  System.out.println("ERROR");
}}
        {
new DecimalBinario ();
        }}}}

