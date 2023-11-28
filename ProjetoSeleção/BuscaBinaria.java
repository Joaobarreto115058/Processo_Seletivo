package ProjetoSeleção;
//Questão numero 3 relacionada a Busca_Em_Lista_Ordenada

import java.util.Arrays;
import java.util.Scanner;

public class BuscaBinaria {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Lista de números (deve estar ordenada)
        int[] numeros = {1, 2, 5, 7, 9, 12, 15, 18, 21};

        // Solicita um número ao usuário
        System.out.print("Digite um número para buscar na lista: ");
        int alvo = scanner.nextInt();

        // Realiza a busca binária
        int posicao = buscaBinaria(numeros, alvo);

        // Imprime o resultado
        if (posicao != -1) {
            System.out.println("O número " + alvo + " está na posição " + posicao + " da lista.");
        } else {
            System.out.println("O número " + alvo + " não está presente na lista.");
        }

        scanner.close();
    }

    public static int buscaBinaria(int[] array, int alvo) {
        int inicio = 0;
        int fim = array.length - 1;

        while (inicio <= fim) {
            int meio = (inicio + fim) / 2;

            if (array[meio] == alvo) {
                return meio; // Encontrou o número, retorna a posição
            } else if (array[meio] < alvo) {
                inicio = meio + 1; // Descarta a metade inferior
            } else {
                fim = meio - 1; // Descarta a metade superior
            }
        }

        return -1; // O número não está presente na lista
    }
}
