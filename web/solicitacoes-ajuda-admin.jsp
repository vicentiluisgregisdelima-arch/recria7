<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ReCria - Solicitações do Administrador</title>

<style>
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: Arial, sans-serif;
    background: #f7faf6;
    color: #202820;
}


/* MENU LATERAL PADRÃO DO RECRIA */

.menu-lateral {
    position: fixed;
    top: 0;
    left: 0;
    width: 185px;
    height: 100vh;
    background-color: #effbe8;
    border-right: 1px solid #a8d8bd;
    display: flex;
    flex-direction: column;
    z-index: 50;
    overflow: hidden;
    transition: width 0.3s ease, left 0.3s ease;
}

.topo-menu {
    width: 100%;
    height: 95px;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-shrink: 0;
}

.botao-hamburguer {
    background: transparent;
    border: none;
    color: #10233e;
    font-size: 35px;
    font-weight: bold;
    cursor: pointer;
    line-height: 1;
}

.navegacao {
    width: 100%;
    display: flex;
    flex-direction: column;
    gap: 3px;
    padding: 0 10px;
}

.item-menu {
    width: 100%;
    min-height: 94px;
    flex-shrink: 0;
    border-radius: 20px;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    gap: 5px;
    text-decoration: none;
    color: #10233e;
    font-weight: bold;
    font-size: 16px;
    text-align: center;
    transition: background-color 0.2s ease;
}

.item-menu:hover {
    background-color: #dff7d5;
}

.item-menu.ativo {
    background-color: #d4f5c4;
}

.icone {
    font-size: 39px;
    font-weight: normal;
    line-height: 1;
    flex-shrink: 0;
}

.texto-menu {
    line-height: 1.2;
}

.folhas-menu {
    margin-top: auto;
    flex-shrink: 0;
    font-size: 85px;
    padding: 10px 8px;
    position: relative;
    bottom: 25px;
    transform: rotate(-12deg);
    opacity: 0.85;
    pointer-events: none;
}

/* MENU RECOLHIDO */

.menu-lateral.fechado {
    width: 85px;
}

.menu-lateral.fechado .item-menu {
    min-height: 94px;
    gap: 0;
}

.menu-lateral.fechado .texto-menu,
.menu-lateral.fechado .folhas-menu {
    display: none;
}

.menu-lateral.fechado .icone {
    font-size: 32px;
}

/* CONTEÚDO PRINCIPAL */

.conteudo-principal {
    min-height: 100vh;
    margin-left: 185px;
    width: calc(100% - 185px);
    padding: 25px;
    transition: margin-left 0.3s ease, width 0.3s ease;
}

.menu-lateral.fechado ~ .conteudo-principal {
    margin-left: 85px;
    width: calc(100% - 85px);
}

/* BOTÃO DO MENU NO CELULAR */

.botao-menu-mobile {
    display: none;
}

/* CELULAR E TABLET */

@media (max-width: 768px) {
    .menu-lateral {
        left: -185px;
        width: 185px;
        height: 100vh;
        transition: left 0.3s ease;
    }

    .menu-lateral.aberto {
        left: 0;
    }

    .menu-lateral.fechado {
        width: 185px;
    }

    .menu-lateral.fechado .texto-menu {
        display: inline;
    }

    .menu-lateral.fechado .folhas-menu {
        display: block;
    }

    .menu-lateral.fechado .item-menu {
        min-height: 94px;
        gap: 5px;
    }

    .menu-lateral.fechado .icone {
        font-size: 39px;
    }

    .conteudo-principal,
    .menu-lateral.fechado ~ .conteudo-principal {
        margin-left: 0;
        width: 100%;
        padding: 16px;
    }

    .botao-menu-mobile {
        display: flex;
        position: absolute;
        top: 18px;
        left: 14px;
        width: 44px;
        height: 44px;
        align-items: center;
        justify-content: center;
        border: none;
        background: transparent;
        color: #10233e;
        font-size: 30px;
        cursor: pointer;
    }
}

/* CABEÇALHO */
.cabecalho {
    display: flex;
    align-items: center;
    gap: 15px;
    margin-bottom: 25px;
}


.voltar {
    width: 78px;
    height: 78px;
    flex-shrink: 0;
    border: none;
    border-radius: 50%;
    background: #e1f5e3;
    color: #10233e;
    font-size: 42px;
    line-height: 1;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
}

.voltar:hover {
    background: #d3edda;
}


.cabecalho h1 {
    font-size: 25px;
}

.subtitulo {
    color: #687568;
    font-size: 14px;
    margin-top: 6px;
}

/* PAINEL DE MENSAGENS */
.painel {
    display: grid;
    grid-template-columns: minmax(230px, 310px) minmax(0, 1fr);
    min-height: 570px;
    height: calc(100vh - 165px);
    max-height: 760px;
    background: white;
    border: 1px solid #dce8d8;
    border-radius: 14px;
    overflow: hidden;
}

/* LISTA À ESQUERDA */
.lista-solicitacoes {
    background: #fbfdf9;
    border-right: 1px solid #dce8d8;
    display: flex;
    flex-direction: column;
    min-width: 0;
}

.titulo-lista {
    padding: 20px 16px;
    border-bottom: 1px solid #e2ebde;
}

.titulo-lista h2 {
    font-size: 17px;
}

.contador {
    display: inline-block;
    margin-top: 8px;
    padding: 4px 9px;
    border-radius: 20px;
    background: #dff3d5;
    color: #315c37;
    font-size: 12px;
}

.itens-solicitacoes {
    overflow-y: auto;
    flex: 1;
}

.solicitacao {
    display: block;
    width: 100%;
    border: none;
    border-bottom: 1px solid #edf1ea;
    background: white;
    text-align: left;
    padding: 17px 15px;
    cursor: pointer;
    color: #202820;
}

.solicitacao:hover {
    background: #f3faef;
}

.solicitacao.selecionada {
    background: #e9f7e2;
    border-left: 4px solid #67a95b;
    padding-left: 11px;
}

.nome-solicitante {
    display: block;
    font-weight: bold;
    font-size: 14px;
    margin-bottom: 7px;
}

.previa-mensagem {
    display: block;
    font-size: 13px;
    color: #687568;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}

.data-solicitacao {
    display: block;
    margin-top: 9px;
    font-size: 11px;
    color: #879187;
}

.lista-vazia {
    padding: 25px 16px;
    color: #687568;
    font-size: 13px;
    line-height: 1.6;
}

/* MENSAGEM À DIREITA */
.detalhes {
    min-width: 0;
    display: flex;
    flex-direction: column;
    overflow-y: auto;
}

.detalhes-cabecalho {
    padding: 22px;
    border-bottom: 1px solid #e2ebde;
}

.detalhes-cabecalho h2 {
    font-size: 20px;
    overflow-wrap: anywhere;
}

.detalhes-data {
    color: #778276;
    font-size: 13px;
    margin-top: 8px;
}

.conteudo-mensagem {
    padding: 25px 22px;
    flex: 1;
}

.rotulo {
    font-size: 12px;
    font-weight: bold;
    color: #52754c;
    text-transform: uppercase;
    letter-spacing: .5px;
    margin-bottom: 12px;
}

.texto-mensagem {
    white-space: pre-wrap;
    overflow-wrap: anywhere;
    line-height: 1.8;
    font-size: 15px;
}

.area-equipe {
    margin: 0 22px 22px;
    padding: 17px;
    border: 1px solid #dce8d8;
    border-radius: 10px;
    background: #f8fcf5;
}

.area-equipe h3 {
    font-size: 15px;
    margin-bottom: 8px;
}

.area-equipe p {
    color: #687568;
    font-size: 13px;
    line-height: 1.6;
}

.selecione-mensagem {
    margin: auto;
    text-align: center;
    padding: 30px;
    color: #71806f;
    line-height: 1.7;
}

.selecione-mensagem .icone-grande {
    display: block;
    font-size: 48px;
    margin-bottom: 15px;
}

/* RESPONSIVIDADE */
@media (max-width: 800px) {
    .conteudo-principal {
        padding: 16px;
    }

    .painel {
        grid-template-columns: minmax(125px, 38%) minmax(0, 1fr);
        height: calc(100vh - 150px);
    }

    .cabecalho h1 {
        font-size: 20px;
    }

    .detalhes-cabecalho,
    .conteudo-mensagem {
        padding: 16px;
    }

    .area-equipe {
        margin: 0 16px 16px;
    }
}

@media (max-width: 520px) {
    .painel {
        grid-template-columns: minmax(110px, 36%) minmax(0, 1fr);
    }

    .solicitacao {
        padding: 13px 9px;
    }

    .solicitacao.selecionada {
        padding-left: 6px;
    }

    .nome-solicitante {
        font-size: 12px;
    }

    .previa-mensagem {
        font-size: 11px;
    }

    .detalhes-cabecalho h2 {
        font-size: 16px;
    }

    .texto-mensagem {
        font-size: 14px;
    }
}
</style>
</head>

<body>


<aside class="menu-lateral" id="menuLateral">

    <div class="topo-menu">
        <button type="button"
                class="botao-hamburguer"
                id="btnHamburguer"
                aria-label="Abrir ou recolher menu">
            ☰
        </button>
    </div>

    <nav class="navegacao">

        <a href="pesquisa.jsp" class="item-menu">
            <span class="icone">&#128270;</span>
            <span class="texto-menu">Pesquisa</span>
        </a>

        <a href="comunidade.jsp" class="item-menu">
            <span class="icone">&#x1F465;</span>
            <span class="texto-menu">Comunidade</span>
        </a>

        <a href="noticias.jsp" class="item-menu">
            <span class="icone">&#x1F4F0;</span>
            <span class="texto-menu">Notícias</span>
        </a>

        <a href="chatia.jsp" class="item-menu">
            <span class="icone">&#128172;</span>
            <span class="texto-menu">Chat com IA</span>
        </a>

        <a href="conversas.jsp" class="item-menu">
            <span class="icone">&#x1F55B;</span>
            <span class="texto-menu">Conversas<br>recentes</span>
        </a>

        <a href="perfil.jsp" class="item-menu">
            <span class="icone">&#x1F464;</span>
            <span class="texto-menu">Perfil</span>
        </a>

    </nav>

    <div class="folhas-menu">
        <span>🌿</span>
    </div>

</aside>


<main class="conteudo-principal">
    <header class="cabecalho">
        
        <button type="button"
        class="botao-menu-mobile"
        id="btnMenuMobile"
        aria-label="Abrir menu">
    ☰
</button>
        
        <button class="voltar" onclick="history.back()" aria-label="Voltar">←</button>
        <div>
            <h1>Solicitações de ajuda</h1>
            <p class="subtitulo">Solicitações encaminhadas pelo moderador</p>
        </div>
    </header>

    <section class="painel">
        <div class="lista-solicitacoes">
            <div class="titulo-lista">
                <h2>Mensagens recebidas</h2>
                <span class="contador" id="contador">0 solicitações</span>
            </div>
            <div class="itens-solicitacoes" id="listaSolicitacoes">
                <p class="lista-vazia">Carregando solicitações...</p>
            </div>
        </div>

        <div class="detalhes" id="detalhes">
            <div class="selecione-mensagem">
                <span class="icone-grande">✉️</span>
                <p>Selecione uma solicitação à esquerda para ler a mensagem completa.</p>
            </div>
        </div>
    </section>
</main>

<script>

const menu = document.getElementById("menuLateral");
const botaoMenu = document.getElementById("btnHamburguer");
const botaoMenuMobile = document.getElementById("btnMenuMobile");

// Menu lateral em telas grandes.
botaoMenu.addEventListener("click", () => {
    if (window.matchMedia("(max-width: 768px)").matches) {
        menu.classList.toggle("aberto");
    } else {
        menu.classList.toggle("fechado");
    }
});

// Botão visível no cabeçalho em telas pequenas.
botaoMenuMobile.addEventListener("click", (evento) => {
    evento.stopPropagation();
    menu.classList.toggle("aberto");
});

// Fecha o menu móvel ao clicar fora dele.
document.addEventListener("click", (evento) => {
    if (
        window.matchMedia("(max-width: 768px)").matches &&
        menu.classList.contains("aberto") &&
        !menu.contains(evento.target) &&
        evento.target !== botaoMenuMobile
    ) {
        menu.classList.remove("aberto");
    }
});


const lista = document.getElementById("listaSolicitacoes");
const detalhes = document.getElementById("detalhes");
const contador = document.getElementById("contador");

function carregarSolicitacoes() {
    let solicitacoes = [];

    try {
        solicitacoes = JSON.parse(
            localStorage.getItem("recriaSolicitacoesAjuda")
        ) || [];
    } catch (erro) {
        solicitacoes = [];
    }

    // O administrador só vê solicitações encaminhadas pelo moderador.
    solicitacoes = solicitacoes.filter(item => item.encaminhada === true);

    contador.textContent = solicitacoes.length +
        (solicitacoes.length === 1 ? " solicitação" : " solicitações");

    lista.innerHTML = "";

    if (solicitacoes.length === 0) {
        lista.innerHTML = `
            <p class="lista-vazia">
                Nenhuma solicitação encaminhada ainda.
            </p>`;
        return;
    }

    solicitacoes.slice().reverse().forEach((item, indice) => {
        const botao = document.createElement("button");
        botao.className = "solicitacao";
        botao.type = "button";

        const nome = document.createElement("span");
        nome.className = "nome-solicitante";
        nome.textContent = item.nome || "Usuário";

        const previa = document.createElement("span");
        previa.className = "previa-mensagem";
        previa.textContent = item.mensagem || "Sem mensagem";

        const data = document.createElement("span");
        data.className = "data-solicitacao";
        data.textContent = item.data || "";

        botao.append(nome, previa, data);

        botao.addEventListener("click", () => {
            document.querySelectorAll(".solicitacao").forEach(elemento => {
                elemento.classList.remove("selecionada");
            });

            botao.classList.add("selecionada");
            mostrarDetalhes(item);
        });

        lista.appendChild(botao);

        // Abre a primeira solicitação automaticamente.
        if (indice === 0) {
            botao.click();
        }
    });
}

function mostrarDetalhes(item) {
    detalhes.innerHTML = "";

    const cabecalho = document.createElement("div");
    cabecalho.className = "detalhes-cabecalho";

    const titulo = document.createElement("h2");
    titulo.textContent = "Solicitação de " + (item.nome || "Usuário");

    const data = document.createElement("p");
    data.className = "detalhes-data";
    data.textContent = item.data ? "Recebida em " + item.data : "";

    cabecalho.append(titulo, data);

    const corpo = document.createElement("div");
    corpo.className = "conteudo-mensagem";

    const rotulo = document.createElement("p");
    rotulo.className = "rotulo";
    rotulo.textContent = "Mensagem original";

    const mensagem = document.createElement("p");
    mensagem.className = "texto-mensagem";
    mensagem.textContent = item.mensagem || "Nenhuma mensagem informada.";

    corpo.append(rotulo, mensagem);

    const equipe = document.createElement("div");
    equipe.className = "area-equipe";

    const tituloEquipe = document.createElement("h3");
    tituloEquipe.textContent = "Avaliação da equipe";

    const descricaoEquipe = document.createElement("p");
    descricaoEquipe.textContent =
        "Área destinada à análise interna desta solicitação. " +
        "Nenhuma mensagem será enviada ao usuário por esta tela.";

    equipe.append(tituloEquipe, descricaoEquipe);
    detalhes.append(cabecalho, corpo, equipe);
}

carregarSolicitacoes();
</script>

</body>
</html>
