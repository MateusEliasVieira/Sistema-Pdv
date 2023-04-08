
package modelClasse;

/**
 *
 * @author mateus
 */
public class BaixaEstoque {
    
    // Atributos
    private int codigo;
    private int quantidade;

    // Construtor Vazio
    public BaixaEstoque() {
    }

    // Construtor com todos atributos
    public BaixaEstoque(int codigo, int quantidade) {
        this.codigo = codigo;
        this.quantidade = quantidade;
    }

    // Metodos Getters e Setters
    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }
    
    
    
}
