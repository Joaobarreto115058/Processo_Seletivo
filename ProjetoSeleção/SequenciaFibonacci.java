package ProjetoSeleção;
// Questão número 1 reeferente a sequencia de Fibonacci

public class SequenciaFibonacci {

    public static void main(String[] args) {
        // Gera os primeiros 15 números da sequência de Fibonacci
        int n = 15;
        int[] fibonacciArray = generateFibonacci(n);

        // Imprime o resultado
        System.out.println("Os primeiros 15 números da sequência de Fibonacci são:");
        for (int i = 0; i < n; i++) {
            System.out.print(fibonacciArray[i] + " ");
        }
    }

    public static int[] generateFibonacci(int n) {
        int[] fibonacciArray = new int[n];
        fibonacciArray[0] = 0;
        fibonacciArray[1] = 1;

        for (int i = 2; i < n; i++) {
            fibonacciArray[i] = fibonacciArray[i - 1] + fibonacciArray[i - 2];
        }

        return fibonacciArray;
    }
}


	
	
	
	
	
	
	
	

