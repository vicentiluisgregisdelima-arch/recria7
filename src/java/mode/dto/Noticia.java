package mode.dto;

import java.util.Date;

public class Noticia {
    
    private int id;
    private String titulo;
    private String conteudo;
    private String imagem;
    private Date data;
    private int idAutor;
    private boolean status;
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

    public String getConteudo() {
        return conteudo;
    }

    public void setConteudo(String conteudo) {
        this.conteudo = conteudo;
    }

    public String getImagem() {
        return imagem;
    }

    public void setImagem(String imagem) {
        this.imagem = imagem;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public int getIdAutor() {
        return idAutor;
    }

    public void setIdAutor(int idAutor) {
        this.idAutor = idAutor;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Usuario getObjUsuario() {
        return objUsuario;
    }

    public void setObjUsuario(Usuario objUsuario) {
        this.objUsuario = objUsuario;
    }

    @Override
    public String toString() {
        return "Noticia{" + "id=" + id + ", titulo=" + titulo + ", conteudo=" + conteudo + ", imagem=" + imagem + ", data=" + data + ", idAutor=" + idAutor + ", status=" + status + ", objUsuario=" + objUsuario + '}';
    }
    
}
