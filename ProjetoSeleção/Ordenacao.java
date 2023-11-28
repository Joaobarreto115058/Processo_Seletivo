package ProjetoSeleção;
// Questão número 2 referente a ordenaçãoSimples 

import java.util.Arrays;

public class Ordenacao {

    public static void main(String[] args) {
        // Exemplo de lista de números //
        int[] numeros = {5, 2, 9, 1, 5, 6};

        // Chama a função para ordenar a lista
        bubbleSort(numeros);

        // Imprime a lista ordenada // 
        System.out.println("Lista ordenada: " + Arrays.toString(numeros));
    }

    public static void bubbleSort(int[] array) {
        int n = array.length;
        boolean troca;

        do {
            troca = false;
            for (int i = 0; i < n - 1; i++) {
                if (array[i] > array[i + 1]) {
                    // Troca os elementos se estiverem na ordem errada //
                    int temp = array[i];
                    array[i] = array[i + 1];
                    array[i + 1] = temp;
                    troca = true;
                }
            }
        } while (troca);
    }
}
