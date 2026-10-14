package mode.dto;

import java.util.Date;

public class ConversaIA {
    
    private int id;
    private int idUsuario;
    private String pergunta;
    private String resposta;
    private String imagemGerada;
    private Date data;
    private boolean salvo;
    private Usuario objUsuario;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getPergunta() {
        return pergunta;
    }

    public void setPergunta(String pergunta) {
        this.pergunta = pergunta;
    }

    public String getResposta() {
        return resposta;
    }

    public void setResposta(String resposta) {
        this.resposta = resposta;
    }

    public String getImagemGerada() {
        return imagemGerada;
    }

    public void setImagemGerada(String imagemGerada) {
        this.imagemGerada = imagemGerada;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public boolean isSalvo() {
        return salvo;
    }

    public void setSalvo(boolean salvo) {
        this.salvo = salvo;
    }

    public Usuario getObjUsuario() {
        return objUsuario;
    }

    public void setObjUsuario(Usuario objUsuario) {
        this.objUsuario = objUsuario;
    }

    @Override
    public String toString() {
        return "ConversaIA{" + "id=" + id + ", idUsuario=" + idUsuario + ", pergunta=" + pergunta + ", resposta=" + resposta + ", imagemGerada=" + imagemGerada + ", data=" + data + ", salvo=" + salvo + ", objUsuario=" + objUsuario + '}';
    }
    
}
