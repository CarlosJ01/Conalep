package practica.pkg7.conversion.de.decimal.a.binario;
public class Practica7ConversionDeDecimalABinario {
    public static void main(String[] args) {
long numeroDecimal =96 ;
        long aux= numeroDecimal ;
        String numeroBinario =new String () ;
        while (aux > 0) {
        numeroBinario=aux%2+numeroBinario ;
         aux /=2 ;
    }
    System.out.println (numeroBinario) ;
    long numeroBinarioconvertir=Long.parseLong (numeroBinario) ;
    long salidaDecimal=96 ;
    long contador= 0 ;
    long auxDecimal ;
    while (numeroBinarioconvertir >0) {
        auxDecimal=numeroBinarioconvertir/2 ;
        salidaDecimal= salidaDecimal+auxDecimal*contador ;
        numeroBinarioconvertir /=10 ;
        contador=contador*2 ;
    }
    System.out.println (salidaDecimal) ;
    }}