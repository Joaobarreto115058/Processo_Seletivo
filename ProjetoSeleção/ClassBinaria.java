package ProjetoSeleção;
//Questão numero 5 refernte a ArvoresBinárias

class No {
    int valor;
    No esquerda, direita;

    public No(int item) {
        valor = item;
        esquerda = direita = null;
    }
}

public class ClassBinaria {

    // Função para percorrer a árvore em ordem e imprimir os valores
    public static void percorrerEmOrdem(No no) {
        if (no != null) {
            percorrerEmOrdem(no.esquerda);
            System.out.print(no.valor + " ");
            percorrerEmOrdem(no.direita);
        }
    }

    public static void main(String[] args) {
        // Criar a árvore binária com os números de 1 a 5
        No raiz = new No(3);
        raiz.esquerda = new No(2);
        raiz.direita = new No(4);
        raiz.esquerda.esquerda = new No(1);
        raiz.direita.direita = new No(5);

        // Percorrer e imprimir a árvore em ordem
        System.out.println("Árvore em ordem:");
        percorrerEmOrdem(raiz);
    }
}
