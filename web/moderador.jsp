<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ReCria - Painel do Moderador</title>

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

.layout {
    min-height: 100vh;
}

/* MENU LATERAL */

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

.item-menu.ativo {
    background-color: var(--verde-selecao);
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
    padding: 0 34px 40px;
    transition: margin-left 0.3s ease;
}

.menu-lateral.fechado ~ .conteudo-principal {
    margin-left: 85px;
}

/* CABEÇALHO */

.cabecalho {
    min-height: 170px;
    display: flex;
    align-items: center;
    gap: 20px;
    padding: 25px 8px;
}

.botao-voltar {
    width: 86px;
    height: 86px;
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

.simbolo-moderador {
    width: 76px;
    height: 86px;
    flex-shrink: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 68px;
    line-height: 1;
}

.titulos {
    min-width: 0;
}

.titulos h1 {
    color: #071b22;
    font-size: clamp(28px, 3.5vw, 48px);
    line-height: 1.12;
    margin-bottom: 10px;
}

.titulos p {
    color: var(--texto-suave);
    font-size: clamp(16px, 1.8vw, 24px);
    line-height: 1.35;
}

/* PAINEL DE AÇÕES */

.painel-acoes {
    width: 100%;
    max-width: 1050px;
    margin: 20px auto 0;
    padding: 50px 42px;
    border: 2px solid #e0eaf0;
    border-radius: 22px;
    display: flex;
    flex-direction: column;
    gap: 32px;
}

.cartao-acao {
    min-height: 192px;
    border: 2px solid var(--borda-card);
    border-radius: 17px;
    padding: 25px 26px 25px 42px;
    display: grid;
    grid-template-columns: 145px minmax(0, 1fr) 185px;
    align-items: center;
    gap: 30px;
    background: #fff;
}

.icone-acao {
    width: 128px;
    height: 128px;
    border-radius: 50%;
    background: #e4f7e4;
    color: #08713b;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 65px;
    line-height: 1;
}

.texto-acao {
    min-width: 0;
}

.texto-acao h2 {
    color: var(--texto);
    font-size: clamp(21px, 2.2vw, 29px);
    line-height: 1.2;
    margin-bottom: 12px;
}

.texto-acao p {
    color: var(--texto-suave);
    font-size: clamp(16px, 1.6vw, 22px);
    line-height: 1.55;
}

.botao-acessar {
    min-height: 68px;
    width: 100%;
    border: none;
    border-radius: 15px;
    background: var(--verde-botao);
    color: #fff;
    font-family: inherit;
    font-size: 21px;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 17px;
    cursor: pointer;
    padding: 12px 15px;
    text-decoration: none;
    -webkit-text-decoration: none;
}

.botao-acessar:hover {
    background: #27884e;
    color: #fff;
    text-decoration: none;
}

.botao-acessar:focus,
.botao-acessar:active,
.botao-acessar:visited {
    color: #fff;
    text-decoration: none;
}

.seta-acessar {
    font-size: 27px;
    line-height: 1;
    text-decoration: none;
}

.botao-menu-mobile {
    display: none;
}

/* TELAS MÉDIAS */

@media (max-width: 1050px) {
    .conteudo-principal {
        padding: 0 22px 30px;
    }

    .painel-acoes {
        padding: 28px 24px;
        gap: 22px;
    }

    .cartao-acao {
        grid-template-columns: 105px minmax(0, 1fr) 150px;
        gap: 20px;
        padding: 22px;
    }

    .icone-acao {
        width: 100px;
        height: 100px;
        font-size: 52px;
    }

    .botao-acessar {
        font-size: 18px;
    }
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
        min-height: 145px;
        padding: 60px 0 20px;
        gap: 12px;
    }

    .botao-voltar {
        width: 48px;
        height: 48px;
        font-size: 30px;
    }

    .simbolo-moderador {
        width: 45px;
        height: 52px;
        font-size: 42px;
    }

    .titulos h1 {
        font-size: clamp(23px, 5vw, 32px);
        margin-bottom: 6px;
    }

    .titulos p {
        font-size: 15px;
    }

    .painel-acoes {
        margin-top: 10px;
        padding: 16px;
        gap: 16px;
    }

    .cartao-acao {
        min-height: 0;
        grid-template-columns: 68px minmax(0, 1fr);
        gap: 15px;
        padding: 18px;
    }

    .icone-acao {
        width: 68px;
        height: 68px;
        font-size: 36px;
    }

    .texto-acao h2 {
        font-size: 20px;
        margin-bottom: 7px;
    }

    .texto-acao p {
        font-size: 15px;
        line-height: 1.4;
    }

    .botao-acessar {
        grid-column: 1 / -1;
        min-height: 48px;
        font-size: 17px;
        border-radius: 12px;
        text-decoration: none;
        text-decoration: none;
color: #fff;
    }
}

/* CELULARES PEQUENOS */

@media (max-width: 400px) {
    .conteudo-principal {
        padding-left: 10px;
        padding-right: 10px;
    }

    .cabecalho {
        gap: 8px;
    }

    .botao-voltar {
        width: 42px;
        height: 42px;
        font-size: 27px;
    }

    .simbolo-moderador {
        width: 37px;
        font-size: 35px;
    }

    .titulos h1 {
        font-size: 21px;
    }

    .titulos p {
        font-size: 13px;
    }

    .painel-acoes {
        padding: 10px;
    }

    .cartao-acao {
        padding: 13px;
        grid-template-columns: 56px minmax(0, 1fr);
        gap: 12px;
    }

    .icone-acao {
        width: 56px;
        height: 56px;
        font-size: 30px;
    }

    .texto-acao h2 {
        font-size: 18px;
    }

    .texto-acao p {
        font-size: 14px;
    }
}
    </style>
</head>

<body>
<div class="layout">

    <!-- MENU LATERAL PADRÃO DO RECRIA -->
    
<aside class="menu-lateral" id="menuLateral">

    <div class="topo-menu">
        <button class="botao-hamburguer"
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

        <a href="noticias.jsp" class="item-menu" id="itemNoticias">
            <span class="icone">&#x1F4F0;</span>
            <span class="texto-menu">Notícias</span>
        </a>

        <a href="chatia.jsp" class="item-menu">
            <span class="icone">&#128172;</span>
            <span class="texto-menu">Chat com IA</span>
        </a>

        <a href="conversas.jsp" class="item-menu" id="itemConversas">
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


    <!-- CONTEÚDO PRINCIPAL -->
    <main class="conteudo-principal">
        <header class="cabecalho">
            <button class="botao-menu-mobile" id="btnMenuMobile"
                    aria-label="Abrir menu">☰</button>

            <button class="botao-voltar" id="btnVoltar"
                    aria-label="Voltar" title="Voltar">←</button>

            <div class="simbolo-moderador" aria-hidden="true">🛡️</div>

            <div class="titulos">
                <h1>Painel do Moderador</h1>
                <p>Gerencie as atividades da comunidade ReCria.</p>
            </div>
        </header>

        <section class="painel-acoes" aria-label="Atividades do moderador">
            <article class="cartao-acao">
                <div class="icone-acao" aria-hidden="true">&#x1F4F0</div>
                <div class="texto-acao">
                    <h2>Criar notícia</h2>
                    <p>Escreva e publique notícias ambientais.</p>
                </div>
                <button type="button" class="botao-acessar" data-acao="noticia">
                    Acessar <span class="seta-acessar" aria-hidden="true">→</span>
                </button>
            </article>

            <article class="cartao-acao">
                <div class="icone-acao" aria-hidden="true">📁</div>
                <div class="texto-acao">
                    <h2>Avaliar projetos</h2>
                    <p>Analise os projetos enviados pelos usuários antes de serem publicados.</p>
                </div>
                <button type="button" class="botao-acessar" data-acao="projetos">
                    Acessar <span class="seta-acessar" aria-hidden="true">→</span>
                </button>
            </article>

            <article class="cartao-acao">
                <div class="icone-acao" aria-hidden="true">&#x2753;</div>
                <div class="texto-acao">
                    <h2>Solicitações de ajuda</h2>
                    <p>Confira e responda às mensagens de ajuda dos usuários.</p>
                </div>
               <a href="solicitacoesAjuda.jsp" class="botao-acessar">
    Acessar <span class="seta-acessar" aria-hidden="true">→</span>
</a>
            </article>
        </section>
    </main>
</div>

<script>
    const menuLateral = document.getElementById("menuLateral");
    const btnHamburguer = document.getElementById("btnHamburguer");
    const btnMenuMobile = document.getElementById("btnMenuMobile");
    const btnVoltar = document.getElementById("btnVoltar");
    const botoesAcessar = document.querySelectorAll(".botao-acessar");

    // Em telas grandes, recolhe/expande o menu sem esconder os ícones.
    btnHamburguer.addEventListener("click", function () {
        if (window.matchMedia("(max-width: 768px)").matches) {
            menuLateral.classList.toggle("aberto");
        } else {
            menuLateral.classList.toggle("fechado");
        }
    });

    // Abre e fecha o menu em telas pequenas.
    btnMenuMobile.addEventListener("click", function (evento) {
        evento.stopPropagation();
        menuLateral.classList.toggle("aberto");
    });
 
    // Volta à tela em que o usuário estava antes de entrar no painel.
    btnVoltar.addEventListener("click", function () {
        const paginaOrigem = sessionStorage.getItem("paginaOrigemModerador");

        if (paginaOrigem) {
            sessionStorage.removeItem("paginaOrigemModerador");
            window.location.href = paginaOrigem;
        } else {
            window.location.href = "conversas.jsp";
        }
    });

    // Os três botões ficam apenas visuais por enquanto.
    // A ligação com notícias, projetos e solicitações será feita depois.
    botoesAcessar.forEach(function (botao) {
        botao.addEventListener("click", function () {
            // Sem navegação nesta etapa.
        });
    });

    // Fecha o menu móvel quando o usuário toca fora dele.
    document.addEventListener("click", function (evento) {
        if (window.matchMedia("(max-width: 768px)").matches &&
            menuLateral.classList.contains("aberto") &&
            !menuLateral.contains(evento.target) &&
            evento.target !== btnMenuMobile) {
            menuLateral.classList.remove("aberto");
        }
    });
</script>
</body>
</html>
