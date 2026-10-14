<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Solicitações de ajuda - ReCria</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --verde-fundo: #effbe8;
            --verde-selecao: #d4f5c4;
            --verde-hover: #dff7d5;
            --verde-botao: #329e5d;
            --verde-borda: #a8d8bd;
            --texto: #10233e;
            --texto-suave: #8295b1;
            --borda-card: #dce8ed;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #fff;
            color: var(--texto);
            min-height: 100vh;
        }

        /* MENU LATERAL PADRÃO DO RECRIA */

        .layout {
            min-height: 100vh;
        }

        .menu-lateral {
            position: fixed;
            top: 0;
            left: 0;
            width: 185px;
            height: 100vh;
            background-color: var(--verde-fundo);
            border-right: 1px solid var(--verde-borda);
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
            color: var(--texto);
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
            color: var(--texto);
            font-weight: bold;
            font-size: 16px;
            text-align: center;
            transition: background-color 0.2s ease;
        }

        .item-menu:hover {
            background-color: var(--verde-hover);
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
            padding: 0 34px 40px;
            transition: margin-left 0.3s ease;
        }

        .menu-lateral.fechado ~ .conteudo-principal {
            margin-left: 85px;
        }

        /* CABEÇALHO E SETA DE VOLTAR */

        .cabecalho {
            min-height: 155px;
            display: flex;
            align-items: center;
            gap: 20px;
            padding: 25px 8px;
        }

        .botao-voltar {
            width: 78px;
            height: 78px;
            flex-shrink: 0;
            border: none;
            border-radius: 50%;
            background: #e1f5e3;
            color: var(--texto);
            font-size: 42px;
            line-height: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
        }

        .botao-voltar:hover {
            background: #d3edda;
        }

        .simbolo-pagina {
            width: 65px;
            height: 80px;
            flex-shrink: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 54px;
        }

        .titulos {
            min-width: 0;
        }

        .titulos h1 {
            color: #071b22;
            font-size: clamp(27px, 3vw, 43px);
            line-height: 1.12;
            margin-bottom: 9px;
        }

        .titulos p {
            color: var(--texto-suave);
            font-size: clamp(15px, 1.6vw, 21px);
            line-height: 1.4;
        }

        /* ÁREA DE ATENDIMENTO */

        .area-atendimento {
            width: 100%;
            max-width: 1250px;
            min-height: 590px;
            margin: 15px auto 0;
            padding: 22px;
            border: 2px solid #e0eaf0;
            border-radius: 20px;
            display: grid;
            grid-template-columns: minmax(260px, 0.85fr) minmax(0, 1.5fr);
            gap: 22px;
        }

        .painel-lista,
        .painel-mensagem {
            min-width: 0;
            border: 1px solid var(--borda-card);
            border-radius: 15px;
            overflow: hidden;
        }

        .topo-painel {
            padding: 20px;
            border-bottom: 1px solid var(--borda-card);
            background: #fbfdfb;
        }

        .topo-painel h2 {
            font-size: 22px;
            margin-bottom: 6px;
        }

        .topo-painel p {
            color: var(--texto-suave);
            font-size: 14px;
            line-height: 1.4;
        }

        .lista-solicitacoes {
            display: flex;
            flex-direction: column;
        }

        .solicitacao-item {
            width: 100%;
            border: none;
            border-bottom: 1px solid var(--borda-card);
            background: #fff;
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 17px 14px;
            text-align: left;
            font-family: inherit;
            cursor: pointer;
        }

        .solicitacao-item:hover {
            background: #f5fbf2;
        }

        .solicitacao-item.selecionada {
            background: var(--verde-selecao);
        }

        .foto-perfil {
            width: 47px;
            height: 47px;
            flex-shrink: 0;
            border-radius: 50%;
            background: #e2f3e2;
            color: #267a45;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 21px;
            font-weight: bold;
            overflow: hidden;
        }

        .dados-solicitacao {
            min-width: 0;
            flex: 1;
        }

        .dados-solicitacao strong {
            display: block;
            font-size: 15px;
            margin-bottom: 5px;
        }

        .dados-solicitacao span {
            display: block;
            color: var(--texto-suave);
            font-size: 13px;
            line-height: 1.35;
            overflow-wrap: anywhere;
        }

        .estado-pendente {
            width: 9px;
            height: 9px;
            flex-shrink: 0;
            border-radius: 50%;
            background: #e5a23d;
        }

        /* MENSAGEM SELECIONADA */

        .painel-mensagem {
            display: flex;
            flex-direction: column;
        }

        .cabecalho-mensagem {
            display: flex;
            align-items: center;
            gap: 13px;
            padding: 18px 20px;
            border-bottom: 1px solid var(--borda-card);
            flex-wrap: wrap;
        }

        .cabecalho-mensagem .foto-perfil {
            width: 51px;
            height: 51px;
        }

        .identificacao {
    flex: 1;
    min-width: 0;
    overflow: hidden;
}

.identificacao h2 {
    font-size: 19px;
    line-height: 1.3;
    overflow-wrap: normal;
    word-break: normal;
}

.etiqueta-status {
    display: inline-block;
    align-self: flex-start;
    margin-top: 12px;
    margin-left: 64px;
    background: #fff2d9;
    color: #8a5c13;
    border: 1px solid #f3d49a;
    border-radius: 20px;
    padding: 7px 12px;
    font-size: 13px;
    line-height: 1.3;
    white-space: normal;
    max-width: calc(100% - 64px);
}

        .identificacao p {
            color: var(--texto-suave);
            font-size: 13px;
            margin-top: 5px;
        }

        .corpo-mensagem {
            flex: 1;
            min-height: 210px;
            padding: 22px;
            background: #f8fbf8;
        }

        .data-mensagem {
            text-align: center;
            color: var(--texto-suave);
            font-size: 12px;
            margin-bottom: 22px;
        }

        .balao-mensagem {
            max-width: 95%;
            width: fit-content;
            padding: 16px 18px;
            border: 1px solid #dce8dd;
            border-radius: 5px 16px 16px 16px;
            background: #fff;
            color: var(--texto);
            font-size: 15px;
            line-height: 1.6;
            white-space: pre-wrap;
            overflow-wrap: anywhere;
        }

        .rotulo-mensagem {
            display: block;
            color: var(--texto-suave);
            font-size: 12px;
            margin-bottom: 7px;
        }

        .resposta-moderador {
            margin-top: 22px;
            margin-left: auto;
            max-width: 95%;
            width: fit-content;
            padding: 14px 17px;
            border-radius: 16px 5px 16px 16px;
            background: #dff5d9;
            color: #173a23;
            font-size: 14px;
            line-height: 1.5;
            white-space: pre-wrap;
            overflow-wrap: anywhere;
        }

        .resposta-moderador .rotulo-mensagem {
            color: #477452;
        }

        /* RESPOSTA */

        .area-resposta {
            padding: 18px;
            border-top: 1px solid var(--borda-card);
            background: #fff;
        }

        .area-resposta label {
            display: block;
            font-size: 15px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        #textoResposta {
            display: block;
            width: 100%;
            min-height: 100px;
            padding: 13px;
            border: 1px solid #d9e4ec;
            border-radius: 10px;
            font-family: inherit;
            font-size: 15px;
            resize: vertical;
            outline: none;
        }

        #textoResposta:focus {
            border-color: #4ca85b;
        }

        .acoes-resposta {
            display: flex;
            justify-content: flex-end;
            flex-wrap: wrap;
            gap: 10px;
            margin-top: 13px;
        }

        .botao-acao {
            min-height: 45px;
            padding: 11px 16px;
            border: none;
            border-radius: 10px;
            font-family: inherit;
            font-size: 14px;
            font-weight: bold;
            cursor: pointer;
        }

        .botao-responder {
            background: var(--verde-botao);
            color: #fff;
        }

        .botao-responder:hover {
            background: #27884e;
        }

        .botao-encaminhar {
            background: #e8edf5;
            color: var(--texto);
        }

        .botao-encaminhar:hover {
            background: #dce5f0;
        }

        .aviso-feedback {
            position: fixed;
            right: 25px;
            bottom: 25px;
            display: flex;
            align-items: center;
            gap: 12px;
            max-width: calc(100% - 30px);
            padding: 16px 21px;
            border-radius: 8px;
            background: #181818;
            color: #fff;
            font-size: 14px;
            line-height: 1.4;
            box-shadow: 0 5px 20px rgba(0,0,0,.25);
            z-index: 2000;
            animation: aparecer .25s ease;
        }

        .aviso-feedback span:first-child {
            color: #74d47e;
            font-size: 18px;
        }

        .vazio {
            padding: 25px 18px;
            color: var(--texto-suave);
            text-align: center;
            font-size: 14px;
            line-height: 1.5;
        }

        .mensagem-vazia {
            display: flex;
            flex: 1;
            min-height: 240px;
            align-items: center;
            justify-content: center;
            padding: 25px;
            color: var(--texto-suave);
            text-align: center;
            line-height: 1.6;
        }

        .botao-menu-mobile {
            display: none;
        }

        @keyframes aparecer {
            from { opacity: 0; transform: translateY(12px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* RESPONSIVIDADE */

        @media (max-width: 1050px) {
            .conteudo-principal {
                padding: 0 22px 30px;
            }

            .area-atendimento {
                padding: 15px;
                gap: 15px;
                grid-template-columns: minmax(230px, .8fr) minmax(0, 1.4fr);
            }

            .topo-painel {
                padding: 16px;
            }

            .corpo-mensagem {
                padding: 16px;
            }
        }

        @media (max-width: 768px) {
            .menu-lateral {
                left: -185px;
                width: 185px;
                transition: left .3s ease;
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
                padding: 0 16px 25px;
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
                font-size: 30px;
                cursor: pointer;
            }

            .cabecalho {
                min-height: 135px;
                padding: 60px 0 20px;
                gap: 10px;
            }

            .botao-voltar {
                width: 45px;
                height: 45px;
                font-size: 29px;
            }

            .simbolo-pagina {
                width: 42px;
                height: 48px;
                font-size: 36px;
            }

            .titulos h1 {
                font-size: clamp(22px, 5vw, 31px);
                margin-bottom: 6px;
            }

            .titulos p {
                font-size: 14px;
            }

            .area-atendimento {
                min-height: 0;
                padding: 12px;
                grid-template-columns: 1fr;
                gap: 15px;
            }

            .painel-lista {
                max-height: 270px;
                overflow-y: auto;
            }

            .painel-mensagem {
                min-height: 480px;
            }

            .cabecalho-mensagem {
                padding: 14px;
            }

            .etiqueta-status {
                font-size: 11px;
            }

            .corpo-mensagem {
                min-height: 210px;
            }

            .area-resposta {
                padding: 14px;
            }

            .acoes-resposta {
                flex-direction: column;
            }

            .botao-acao {
                width: 100%;
            }
        }

        @media (max-width: 400px) {
            .conteudo-principal {
                padding-left: 10px;
                padding-right: 10px;
            }

            .cabecalho {
                gap: 7px;
            }

            .botao-voltar {
                width: 39px;
                height: 39px;
                font-size: 26px;
            }

            .simbolo-pagina {
                width: 32px;
                font-size: 30px;
            }

            .titulos h1 {
                font-size: 20px;
            }

            .titulos p {
                font-size: 12px;
            }

            .area-atendimento {
                padding: 8px;
            }

            .cabecalho-mensagem {
                flex-wrap: wrap;
            }

            .etiqueta-status {
                margin-left: 64px;
            }

            .corpo-mensagem {
                padding: 12px;
            }
        }
        
        /* Cabeçalho organizado em duas linhas */
.cabecalho-mensagem {
    display: grid;
    grid-template-columns: 51px minmax(0, 1fr);
    align-items: center;
    gap: 8px 13px;
    padding: 18px 20px;
    border-bottom: 1px solid var(--borda-card);
}

.cabecalho-mensagem .foto-perfil {
    grid-column: 1;
    grid-row: 1;
    width: 51px;
    height: 51px;
}

.cabecalho-mensagem .identificacao {
    grid-column: 2;
    grid-row: 1;
    min-width: 0;
    overflow: hidden;
}

.cabecalho-mensagem .identificacao h2 {
    font-size: 19px;
    line-height: 1.3;
    overflow-wrap: anywhere;
    word-break: normal;
}

.cabecalho-mensagem .identificacao p {
    font-size: 13px;
    line-height: 1.4;
    overflow-wrap: anywhere;
}

.cabecalho-mensagem .etiqueta-status {
    grid-column: 1 / -1;
    grid-row: 2;
    justify-self: start;
    max-width: 100%;
    margin: 0;
    white-space: normal;
    overflow-wrap: anywhere;
    text-align: center;
    line-height: 1.4;
}
    </style>
</head>

<body>
<div class="layout">

    <!-- MENU LATERAL PADRÃO DO RECRIA -->

    <aside class="menu-lateral" id="menuLateral">
        <div class="topo-menu">
            <button class="botao-hamburguer" id="btnHamburguer"
                    aria-label="Abrir ou recolher menu">☰</button>
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

        <div class="folhas-menu">🌿</div>
    </aside>

    <!-- CONTEÚDO PRINCIPAL -->

    <main class="conteudo-principal">
        <header class="cabecalho">
            <button class="botao-menu-mobile" id="btnMenuMobile"
                    aria-label="Abrir menu">☰</button>

            <button class="botao-voltar" id="btnVoltar"
                    aria-label="Voltar ao painel do moderador"
                    title="Voltar ao painel do moderador">←</button>

            <div class="simbolo-pagina" aria-hidden="true">💬</div>

            <div class="titulos">
                <h1>Solicitações de ajuda</h1>
                <p>Visualize as mensagens e ajude os usuários do ReCria.</p>
            </div>
        </header>

        <section class="area-atendimento" aria-label="Atendimento de solicitações">

            <!-- LISTA DE SOLICITAÇÕES -->

            <section class="painel-lista">
                <div class="topo-painel">
                    <h2>Mensagens recebidas</h2>
                    <p>Selecione uma solicitação para visualizar.</p>
                </div>

                <div class="lista-solicitacoes" id="listaSolicitacoes"></div>
            </section>

            <!-- MENSAGEM E RESPOSTA -->

            <section class="painel-mensagem">
                <div id="detalhesMensagem" class="mensagem-vazia">
                    Selecione uma solicitação na lista para visualizar a mensagem.
                </div>
            </section>

        </section>
    </main>
</div>

<script>
    const menuLateral = document.getElementById("menuLateral");
    const btnHamburguer = document.getElementById("btnHamburguer");
    const btnMenuMobile = document.getElementById("btnMenuMobile");
    const btnVoltar = document.getElementById("btnVoltar");
    const listaSolicitacoes = document.getElementById("listaSolicitacoes");
    const detalhesMensagem = document.getElementById("detalhesMensagem");

    let solicitacoes = [];
    let indiceSelecionado = -1;

    /*
     * Esta página utiliza dados simulados em localStorage.
     * A solicitação de exemplo permite testar a tela mesmo
     * antes de integrar o formulário de ajuda.
     */

    function carregarSolicitacoes() {
        try {
            const dados = localStorage.getItem("recriaSolicitacoesAjuda");
            solicitacoes = dados ? JSON.parse(dados) : [];
        } catch (erro) {
            solicitacoes = [];
        }

        if (!Array.isArray(solicitacoes)) {
            solicitacoes = [];
        }

        if (solicitacoes.length === 0) {
            solicitacoes = [{
                id: "exemplo-1",
                nome: "Usuário de exemplo",
                foto: "",
                mensagem: "Olá! Estou com uma dúvida sobre como salvar um projeto no ReCria. Poderiam me ajudar?",
                data: new Date().toLocaleDateString("pt-BR"),
                resposta: "",
                encaminhada: false,
                analisada: false
            }];

            salvarSolicitacoes();
        }
    }

    function salvarSolicitacoes() {
        localStorage.setItem(
            "recriaSolicitacoesAjuda",
            JSON.stringify(solicitacoes)
        );
    }

    function criarFoto(solicitacao) {
        const foto = document.createElement("div");
        foto.className = "foto-perfil";

        if (solicitacao.foto) {
            const imagem = document.createElement("img");
            imagem.src = solicitacao.foto;
            imagem.alt = "Foto de " + solicitacao.nome;
            imagem.style.width = "100%";
            imagem.style.height = "100%";
            imagem.style.objectFit = "cover";
            foto.appendChild(imagem);
        } else {
            foto.textContent = (solicitacao.nome || "U").trim().charAt(0).toUpperCase();
        }

        return foto;
    }

    function renderizarLista() {
        listaSolicitacoes.replaceChildren();

        if (solicitacoes.length === 0) {
            const vazio = document.createElement("p");
            vazio.className = "vazio";
            vazio.textContent = "Nenhuma solicitação recebida.";
            listaSolicitacoes.appendChild(vazio);
            return;
        }

        solicitacoes.forEach(function (solicitacao, indice) {
            const item = document.createElement("button");
            item.type = "button";
            item.className = "solicitacao-item";

            if (indice === indiceSelecionado) {
                item.classList.add("selecionada");
            }

            item.appendChild(criarFoto(solicitacao));

            const dados = document.createElement("div");
            dados.className = "dados-solicitacao";

            const nome = document.createElement("strong");
            nome.textContent = solicitacao.nome || "Usuário";

            const resumo = document.createElement("span");
            resumo.textContent = solicitacao.mensagem || "Mensagem sem texto";

            dados.appendChild(nome);
            dados.appendChild(resumo);
            item.appendChild(dados);

            if (!solicitacao.resposta) {
                const estado = document.createElement("span");
                estado.className = "estado-pendente";
                estado.title = "Aguardando resposta";
                item.appendChild(estado);
            }

            item.addEventListener("click", function () {
                indiceSelecionado = indice;
                renderizarLista();
                renderizarDetalhes();
            });

            listaSolicitacoes.appendChild(item);
        });
    }

    function renderizarDetalhes() {
        detalhesMensagem.replaceChildren();

        if (indiceSelecionado < 0 ||
            !solicitacoes[indiceSelecionado]) {
            detalhesMensagem.className = "mensagem-vazia";
            detalhesMensagem.textContent =
                "Selecione uma solicitação na lista para visualizar a mensagem.";
            return;
        }

        const solicitacao = solicitacoes[indiceSelecionado];
        detalhesMensagem.className = "";
        detalhesMensagem.style.display = "flex";
        detalhesMensagem.style.flexDirection = "column";

        const cabecalho = document.createElement("div");
        cabecalho.className = "cabecalho-mensagem";
        cabecalho.appendChild(criarFoto(solicitacao));

        const identificacao = document.createElement("div");
        identificacao.className = "identificacao";

        const nome = document.createElement("h2");
        nome.textContent = solicitacao.nome || "Usuário";

        const data = document.createElement("p");
        data.textContent = "Enviada em " + (solicitacao.data || "data não informada");

        identificacao.appendChild(nome);
        identificacao.appendChild(data);
        cabecalho.appendChild(identificacao);

        const etiqueta = document.createElement("span");
        etiqueta.className = "etiqueta-status";
        etiqueta.textContent = solicitacao.encaminhada
            ? (solicitacao.analisada ? "Analisada pelo administrador" : "Encaminhada ao administrador")
            : (solicitacao.resposta ? "Respondida" : "Pendente");
        cabecalho.appendChild(etiqueta);

        const corpo = document.createElement("div");
        corpo.className = "corpo-mensagem";

        const dataMensagem = document.createElement("div");
        dataMensagem.className = "data-mensagem";
        dataMensagem.textContent = "Solicitação de ajuda";
        corpo.appendChild(dataMensagem);

        const rotulo = document.createElement("span");
        rotulo.className = "rotulo-mensagem";
        rotulo.textContent = "Mensagem do usuário";

        const balao = document.createElement("div");
        balao.className = "balao-mensagem";
        balao.textContent = solicitacao.mensagem || "";

        corpo.appendChild(rotulo);
        corpo.appendChild(balao);

        if (solicitacao.resposta) {
            const resposta = document.createElement("div");
            resposta.className = "resposta-moderador";

            const rotuloResposta = document.createElement("span");
            rotuloResposta.className = "rotulo-mensagem";
            rotuloResposta.textContent = "Resposta enviada ao usuário";

            const textoResposta = document.createElement("div");
            textoResposta.textContent = solicitacao.resposta;

            resposta.appendChild(rotuloResposta);
            resposta.appendChild(textoResposta);
            corpo.appendChild(resposta);
        }

        const areaResposta = document.createElement("div");
        areaResposta.className = "area-resposta";

        const label = document.createElement("label");
        label.htmlFor = "textoResposta";
        label.textContent = "Responder ao usuário";

        const textarea = document.createElement("textarea");
        textarea.id = "textoResposta";
        textarea.placeholder = "Digite sua resposta...";
        textarea.value = solicitacao.resposta || "";

        const acoes = document.createElement("div");
        acoes.className = "acoes-resposta";

        const botaoEncaminhar = document.createElement("button");
        botaoEncaminhar.type = "button";
        botaoEncaminhar.className = "botao-acao botao-encaminhar";
        botaoEncaminhar.textContent = solicitacao.encaminhada
            ? "Encaminhada ao administrador"
            : "Encaminhar ao administrador";
        botaoEncaminhar.disabled = solicitacao.encaminhada;

        if (solicitacao.encaminhada) {
            botaoEncaminhar.style.opacity = ".65";
            botaoEncaminhar.style.cursor = "default";
        }

        botaoEncaminhar.addEventListener("click", function () {
            const respostaAtual = textarea.value.trim();

            if (!respostaAtual) {
                mostrarAviso("Escreva uma resposta antes de encaminhar o caso.");
                textarea.focus();
                return;
            }

            solicitacao.resposta = respostaAtual;
            solicitacao.encaminhada = true;
            salvarSolicitacoes();
            renderizarLista();
            renderizarDetalhes();

            mostrarAviso("Resposta salva e solicitação encaminhada ao administrador.");
        });

        const botaoResponder = document.createElement("button");
        botaoResponder.type = "button";
        botaoResponder.className = "botao-acao botao-responder";
        botaoResponder.textContent = "Enviar resposta";

        botaoResponder.addEventListener("click", function () {
            const respostaAtual = textarea.value.trim();

            if (!respostaAtual) {
                mostrarAviso("Digite uma resposta antes de enviar.");
                textarea.focus();
                return;
            }

            solicitacao.resposta = respostaAtual;
            salvarSolicitacoes();
            renderizarLista();
            renderizarDetalhes();

            mostrarAviso("Resposta salva para o usuário.");
        });

        acoes.appendChild(botaoEncaminhar);
        acoes.appendChild(botaoResponder);

        areaResposta.appendChild(label);
        areaResposta.appendChild(textarea);
        areaResposta.appendChild(acoes);

        detalhesMensagem.appendChild(cabecalho);
        detalhesMensagem.appendChild(corpo);
        detalhesMensagem.appendChild(areaResposta);
    }

    function mostrarAviso(texto) {
        const anterior = document.querySelector(".aviso-feedback");

        if (anterior) {
            anterior.remove();
        }

        const aviso = document.createElement("div");
        aviso.className = "aviso-feedback";

        const simbolo = document.createElement("span");
        simbolo.textContent = "✓";

        const mensagem = document.createElement("span");
        mensagem.textContent = texto;

        aviso.appendChild(simbolo);
        aviso.appendChild(mensagem);
        document.body.appendChild(aviso);

        setTimeout(function () {
            aviso.remove();
        }, 3200);
    }

    // Menu lateral: mantém os ícones visíveis ao recolher.
    btnHamburguer.addEventListener("click", function () {
        if (window.matchMedia("(max-width: 768px)").matches) {
            menuLateral.classList.toggle("aberto");
        } else {
            menuLateral.classList.toggle("fechado");
        }
    });

    btnMenuMobile.addEventListener("click", function (evento) {
        evento.stopPropagation();
        menuLateral.classList.toggle("aberto");
    });

    document.addEventListener("click", function (evento) {
        if (window.matchMedia("(max-width: 768px)").matches &&
            menuLateral.classList.contains("aberto") &&
            !menuLateral.contains(evento.target) &&
            evento.target !== btnMenuMobile) {
            menuLateral.classList.remove("aberto");
        }
    });

    // Volta ao painel do Moderador.
    btnVoltar.addEventListener("click", function () {
        window.location.href = "moderador.jsp";
    });

    carregarSolicitacoes();
    renderizarLista();
    renderizarDetalhes();
</script>
</body>
</html>
