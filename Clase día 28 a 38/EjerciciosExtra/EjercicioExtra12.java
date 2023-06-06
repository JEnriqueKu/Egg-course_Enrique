package EjerciciosExtra;
/*
Necesitamos mostrar un contador con 3 dígitos (X-X-X), que muestre los números del 0-
0-0 al 9-9-9, con la particularidad que cada vez que aparezca un 3 lo sustituya por una E.
Ejemplo:
 */
public class EjercicioExtra12 {
    public EjercicioExtra12(){
        int a=0,b=0,c=0;
        String aS,bS,cS;
        while (a<=9){
            aS= new String(String.valueOf(a));
            bS= new String(String.valueOf(b));
            cS= new String(String.valueOf(c));
            if (aS.equals("3"))aS="E";
            if (bS.equals("3"))bS="E";
            if (cS.equals("3"))cS="E";

            System.out.println("("+aS+"-"+bS+"-"+cS+")");
            c++;
            if (c==10) {
                b++;
                c=0;
            }
            if (b==10){
                a++;
                b=0;
            }
        }
    }
}
