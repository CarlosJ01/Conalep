public class VerdeFalso{
        public static void main(String[]args){
            String respuesta="rojo";
            String resultado="verde";
            System.out.println("¿Has respondido que el color es "+resultado+"?");
            System.out.println("Respuesta:" + respuesta.equals(resultado));
        }
}