package cadastro;

import java.io.Serializable;

public abstract class Pessoa implements Serializable {
    protected int id;
    protected String nome;

    public Pessoa(int id, String nome) {
        this.id = id;
        this.nome = nome;
    }

    public abstract void exibir();
}
