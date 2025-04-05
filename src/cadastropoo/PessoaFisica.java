package cadastro;

public class PessoaFisica extends Pessoa {
    private String cpf;
    private int idade;

    public PessoaFisica(int id, String nome, String cpf, int idade) {
        super(id, nome);
        this.cpf = cpf;
        this.idade = idade;
    }

    @Override
    public void exibir() {
        System.out.println("Pessoa Física -> ID: " + id + ", Nome: " + nome + ", CPF: " + cpf + ", Idade: " + idade);
    }
}
