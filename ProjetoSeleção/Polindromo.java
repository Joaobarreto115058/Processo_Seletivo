package ProjetoSeleção;
//Questão numero 4 referente a Palindromos

import java.util.Scanner;

public class Polindromo {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Solicita uma palavra ao usuário
        System.out.print("Digite uma palavra: ");
        String palavra = scanner.nextLine();

        // Verifica se a palavra é um palíndromo
        boolean resultado = ehPalindromo(palavra);

        // Imprime o resultado
        if (resultado) {
            System.out.println("A palavra '" + palavra + "' é um palíndromo.");
        } else {
            System.out.println("A palavra '" + palavra + "' não é um palíndromo.");
        }

        scanner.close();
    }

    public static boolean ehPalindromo(String palavra) {
        // Remove espaços e converte para minúsculas para facilitar a comparação
        palavra = palavra.replaceAll("\\s", "").toLowerCase();

        int comprimento = palavra.length();

        for (int i = 0; i < comprimento / 2; i++) {
            if (palavra.charAt(i) != palavra.charAt(comprimento - 1 - i)) {
                return false; // Se os caracteres não correspondem, não é um palíndromo
            }
        }

        return true; // Se passar por todas as comparações, é um palíndromo
    }
}

