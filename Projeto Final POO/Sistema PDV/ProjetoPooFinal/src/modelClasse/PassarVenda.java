
package modelClasse;

/**
 *
 * @author mateus
 */
public class PassarVenda{
    
    // Atributos
    private String produto;
    private int quantidade;
    private double valor;

    // Construtor Vazio
    public PassarVenda(){
    
    }
    
    // Construtor com todos os atributos
    public PassarVenda(String produto, int quantidade, double valor) {
        this.produto = produto;
        this.quantidade = quantidade;
        this.valor = valor;
    }

    // Metodos Getters e Setters
    public String getProduto() {
        return produto;
    }

    public void setProduto(String produto) {
        this.produto = produto;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }
    
    
    
    
}
