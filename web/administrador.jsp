<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ReCria - Painel do Administrador</title>

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

/* MENU LATERAL PADRÃO DO RECRIA */

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

.simbolo-administrador {
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
    padding: 32px;
    border: 2px solid #e0eaf0;
    border-radius: 22px;
    display: flex;
    flex-direction: column;
    gap: 26px;
}

.cartao-acao {
    min-height: 155px;
    border: 2px solid var(--borda-card);
    border-radius: 17px;
    padding: 22px 24px 22px 32px;
    display: grid;
    grid-template-columns: 125px minmax(0, 1fr) 160px;
    align-items: center;
    gap: 28px;
    background: #fff;
}

.icone-acao {
    width: 105px;
    height: 105px;
    border-radius: 50%;
    background: #e4f7e4;
    color: #08713b;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 55px;
    line-height: 1;
}

.texto-acao {
    min-width: 0;
}

.texto-acao h2 {
    color: var(--texto);
    font-size: clamp(21px, 2.2vw, 27px);
    line-height: 1.2;
    margin-bottom: 10px;
}

.texto-acao p {
    color: var(--texto-suave);
    font-size: clamp(16px, 1.6vw, 21px);
    line-height: 1.55;
}

.botao-acessar {
    min-height: 60px;
    width: 100%;
    border: none;
    border-radius: 14px;
    background: var(--verde-botao);
    color: #fff;
    font-family: inherit;
    font-size: 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 14px;
    cursor: default;
    padding: 12px 14px;
}

.seta-acessar {
    font-size: 27px;
    line-height: 1;
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
        padding: 24px;
        gap: 20px;
    }

    .cartao-acao {
        grid-template-columns: 100px minmax(0, 1fr) 135px;
        gap: 18px;
        padding: 20px;
    }

    .icone-acao {
        width: 92px;
        height: 92px;
        font-size: 48px;
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
        color: var(--texto);
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

    .simbolo-administrador {
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

    .simbolo-administrador {
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

    <!-- CONTEÚDO PRINCIPAL -->
    <main class="conteudo-principal">

        <header class="cabecalho">

            <button class="botao-menu-mobile" id="btnMenuMobile"
                    aria-label="Abrir menu">☰</button>

            <button class="botao-voltar" id="btnVoltar"
                    aria-label="Voltar" title="Voltar">←</button>

            <div class="simbolo-administrador" aria-hidden="true">&#x2699;&#xFE0F;️</div>

            <div class="titulos">
                <h1>Painel do Administrador</h1>
                <p>Gerencie as atividades da comunidade ReCria.</p>
            </div>

        </header>

        <section class="painel-acoes" aria-label="Atividades do administrador">

            <article class="cartao-acao">

                <div class="icone-acao" aria-hidden="true">🚫</div>

                <div class="texto-acao">
                    <h2>Avaliar banimentos</h2>
                    <p>Verifique os motivos dos bans e analise se a ação foi correta.</p>
                </div>

                <button type="button" class="botao-acessar">
                    Acessar <span class="seta-acessar" aria-hidden="true">→</span>
                </button>

            </article>

            <article class="cartao-acao">

                <div class="icone-acao" aria-hidden="true">💬</div>

                <div class="texto-acao">
                    <h2>Avaliar mensagens de ajuda</h2>
                    <p>Analise as solicitações de ajuda enviadas pelos usuários.</p>
                </div>

                <button type="button"
        class="botao-acessar"
        onclick="window.location.href='solicitacoes-ajuda-admin.jsp'">
    Acessar <span class="seta-acessar" aria-hidden="true">→</span>
</button>

            </article>

            <article class="cartao-acao">

                <div class="icone-acao" aria-hidden="true">&#x1F4F0;</div>

                <div class="texto-acao">
                    <h2>Avaliar notícias</h2>
                    <p>Revise as notícias antes da publicação.</p>
                </div>

              <button type="button" class="botao-acessar">
    Acessar
    <span class="seta-acessar" aria-hidden="true">→</span>
</button>

            </article>

        </section>

    </main>
</div>

<script>
    const menuLateral = document.getElementById("menuLateral");
    const btnHamburguer = document.getElementById("btnHamburguer");
    const btnMenuMobile = document.getElementById("btnMenuMobile");
    const btnVoltar = document.getElementById("btnVoltar");

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

    // Volta à página anterior. Se não houver histórico, abre Conversas recentes.
    btnVoltar.addEventListener("click", function () {
        if (window.history.length > 1) {
            window.history.back();
        } else {
            window.location.href = "conversas.jsp";
        }
    });

    // Os botões Acessar ficam somente visuais nesta etapa.

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