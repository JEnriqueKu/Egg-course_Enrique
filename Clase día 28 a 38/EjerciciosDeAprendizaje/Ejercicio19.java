package EjerciciosDeAprendizaje;
/*
Realice un programa que compruebe si una matriz dada es anti simétrica. Se dice que
una matriz A es anti simétrica cuando ésta es igual a su propia traspuesta, pero cambiada
de signo. Es decir, A es anti simétrica si A = -AT. La matriz traspuesta de una matriz A se
denota por AT y se obtiene cambiando sus filas por columnas (o viceversa).
 */
public class Ejercicio19 {
    public Ejercicio19(){
        int n=3, m=3;
        boolean antisimetrica=true;
        int [][] matriz1 = new int[n][m];
        int [][] matriz2 = new int[n][m];
        matriz1[0][0]=0;
        matriz1[0][1]=-2;
        matriz1[0][2]=4;
        //matriz1[0][3]=2;
        matriz1[1][0]=2;
        matriz1[1][1]=0;
        matriz1[1][2]=2;
        //matriz1[1][3]=-2;
        matriz1[2][0]=-4;
        matriz1[2][1]=-2;
        matriz1[2][2]=0;
        //matriz1[2][3]=-3;
        //matriz1[3][0]=1;
        //matriz1[3][1]=0;
        //matriz1[3][2]=5;
        //matriz1[3][3]=-3;

        System.out.println("Matriz 1:");
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                System.out.print(matriz1[i][j]+" ");
            }
            System.out.println("");
        }

        matriz2[0][0]=0;
        matriz2[0][1]=2;
        matriz2[0][2]=-4;
        //matriz1[0][3]=2;
        matriz2[1][0]=-2;
        matriz2[1][1]=0;
        matriz2[1][2]=-2;
        //matriz1[1][3]=-2;
        matriz2[2][0]=4;
        matriz2[2][1]=2;
        matriz2[2][2]=0;
        //matriz1[2][3]=-3;
        //matriz1[3][0]=1;
        //matriz1[3][1]=0;
        //matriz1[3][2]=5;
        //matriz1[3][3]=-3;

        System.out.println("Matriz 2:");
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                System.out.print(matriz2[i][j]+" ");
            }
            System.out.println("");
        }

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                if (matriz1[i][j]!=(matriz2[j][i]*-1)){
                    antisimetrica=false;
                    break;
                }

            }

        }
        if (antisimetrica) System.out.println("La matriz es antisimétrica");
        else System.out.println("La matriz no es antisimétrica");
    }
}
