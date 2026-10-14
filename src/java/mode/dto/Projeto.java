package mode.dto;

import java.util.Date;

public class Projeto {
    
    private int id;
    private String titulo;
    private String materiaisUtilizados;
    private String imagem;
    private int idAutor;
    private Date dataPublicacao;
    private boolean status;
    private boolean destaque;
    private Usuario objUsuario;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getMateriaisUtilizados() {
        return materiaisUtilizados;
    }

    public void setMateriaisUtilizados(String materiaisUtilizados) {
        this.materiaisUtilizados = materiaisUtilizados;
    }

    public String getImagem() {
        return imagem;
    }

    public void setImagem(String imagem) {
        this.imagem = imagem;
    }

    public int getIdAutor() {
        return idAutor;
    }

    public void setIdAutor(int idAutor) {
        this.idAutor = idAutor;
    }

    public Date getDataPublicacao() {
        return dataPublicacao;
    }

    public void setDataPublicacao(Date dataPublicacao) {
        this.dataPublicacao = dataPublicacao;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public boolean isDestaque() {
        return destaque;
    }

    public void setDestaque(boolean destaque) {
        this.destaque = destaque;
    }

    public Usuario getObjUsuario() {
        return objUsuario;
    }

    public void setObjUsuario(Usuario objUsuario) {
        this.objUsuario = objUsuario;
    }

    @Override
    public String toString() {
        return "Projeto{" + "id=" + id + ", titulo=" + titulo + ", materiaisUtilizados=" + materiaisUtilizados + ", imagem=" + imagem + ", idAutor=" + idAutor + ", dataPublicacao=" + dataPublicacao + ", status=" + status + ", destaque=" + destaque + ", objUsuario=" + objUsuario + '}';
    }
    
}
