package cadastro;

public class PessoaJuridica extends Pessoa {
    private String cnpj;

    public PessoaJuridica(int id, String nome, String cnpj) {
        super(id, nome);
        this.cnpj = cnpj;
    }

    @Override
    public void exibir() {
        System.out.println("Pessoa Jurídica -> ID: " + id + ", Nome: " + nome + ", CNPJ: " + cnpj);
    }
}
