
package modelClasse;

/**
 *
 * @author mateus
 */
public class Produto {
    
    // Atributos.
    private int codigo;
    private String descricao;
    private String unidade;
    private double preco_un;
    private int estoque;

    // Construtor vazio.
    public Produto(){
    
    }
    
    // Construtor sem o atributo codigo.
    public Produto(String descricao, String unidade, double preco_un, int estoque) {
        this.descricao = descricao;
        this.unidade = unidade;
        this.preco_un = preco_un;
        this.estoque = estoque;
    }

    // Construtor com todos os atributos.
    public Produto(int codigo, String descricao, String unidade, double preco_un, int estoque) {
        this.codigo = codigo;
        this.descricao = descricao;
        this.unidade = unidade;
        this.preco_un = preco_un;
        this.estoque = estoque;
    }    

    // Metodos getters e setters.
    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getUnidade() {
        return unidade;
    }

    public void setUnidade(String unidade) {
        this.unidade = unidade;
    }

    public double getPreco_un() {
        return preco_un;
    }

    public void setPreco_un(double preco_un) {
        this.preco_un = preco_un;
    }

    public int getEstoque() {
        return estoque;
    }

    public void setEstoque(int estoque) {
        this.estoque = estoque;
    }
      
    
}
