package mode.dto;

import java.util.Date;

public class MensagemAjuda {
    
    private int id;
    private int idUsuario;
    private String mensagem;
    private Date data;
    private boolean respondido;
    private String resposta;
    private Date dataResposta;
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

    public String getMensagem() {
        return mensagem;
    }

    public void setMensagem(String mensagem) {
        this.mensagem = mensagem;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public boolean isRespondido() {
        return respondido;
    }

    public void setRespondido(boolean respondido) {
        this.respondido = respondido;
    }

    public String getResposta() {
        return resposta;
    }

    public void setResposta(String resposta) {
        this.resposta = resposta;
    }

    public Date getDataResposta() {
        return dataResposta;
    }

    public void setDataResposta(Date dataResposta) {
        this.dataResposta = dataResposta;
    }

    public Usuario getObjUsuario() {
        return objUsuario;
    }

    public void setObjUsuario(Usuario objUsuario) {
        this.objUsuario = objUsuario;
    }

    @Override
    public String toString() {
        return "MensagemAjuda{" + "id=" + id + ","
                + " idUsuario=" + idUsuario + ", "
                + "mensagem=" + mensagem + ", data="
                + data + ", respondido=" + respondido
                + ", resposta=" + resposta + ", "
                + "dataResposta=" + dataResposta + ","
                + " objUsuario=" + objUsuario + '}';
    }
    
}
