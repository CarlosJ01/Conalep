public class decimalabinario{
public static void main(String[]args){
long auxnumerodecimal=15;
long aux=auxnumerodecimal;
String numerobinario=new String();
while(aux>0){
numerobinario=aux%2+numerobinario;
aux/=2;}
System.out.println(numerobinario);
long numerobinarioconvertir=Long.parseLong(numerobinario);
long salidadecimal=0;
long contador=1;
long auxdecimal;
while(numerobinarioconvertir>0){
    auxdecimal=numerobinarioconvertir%2;
    salidadecimal=salidadecimal+auxdecimal*contador;
    numerobinarioconvertir/=10;
    contador=contador*2;}
    System.out.println(salidadecimal);

}
}