<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ReCria - Conversas recentes</title>

    <link rel="stylesheet" href="css/conversas.css">
    
    <style>
        
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, Helvetica, sans-serif;
    background: #ffffff;
    color: #10233e;
}

.layout {
    display: flex;
    min-height: 100vh;
}

/* MENU LATERAL FIXO */

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

    transition: width 0.3s ease,
                left 0.3s ease;
}

/* TOPO DO MENU */

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

/* NAVEGAÇÃO */

.navegacao {
    width: 100%;

    display: flex;
    flex-direction: column;

    gap: 3px;
    padding: 0 10px;
}


/* ITENS DO MENU */

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


/* ÍCONES */

.icone {
    font-size: 39px;
    font-weight: normal;

    line-height: 1;

    flex-shrink: 0;
}


.texto-menu {
    line-height: 1.2;
}

/* FOLHAS */

.folhas-menu {
    margin-top: auto;

    flex-shrink: 0;

    font-size: 85px;
    padding: 10px 8px;

    position: relative;
    bottom: 25px;

    transform: rotate(-12deg);

    opacity: 0.85;
}

/* MENU LATERAL FECHADO */

.menu-lateral.fechado {
    width: 85px;
}


/*
   Mantém os mesmos espaços verticais
   quando o menu está fechado.
*/

.menu-lateral.fechado .item-menu {
    min-height: 94px;
    gap: 0;
}


.menu-lateral.fechado .texto-menu {
    display: none;
}


.menu-lateral.fechado .icone {
    font-size: 32px;
}

/* CONTEÚDO PRINCIPAL */

.conteudo-principal {
    width: calc(100% - 185px);
    min-height: 100vh;
    margin-left: 185px;

    background: #ffffff;

    transition: width 0.3s ease,
                margin-left 0.3s ease;
}


/* CONTEÚDO QUANDO O MENU ESTÁ FECHADO */

.menu-lateral.fechado + .conteudo-principal {
    width: calc(100% - 85px);
    margin-left: 85px;
}

/* CABEÇALHO */

.cabecalho {
    position: relative;
    height: 145px;
    display: flex;
    align-items: center;
    padding: 20px 35px;
}

.marca {
    margin-top: 45px;
    margin-left: 5px;
}

.marca img {
    width: 205px;
    height: auto;
    object-fit: contain;
}

/* TRÊS PONTINHOS */

.botao-tres-pontos {
    position: absolute;

    top: 38px;
    right: 35px;

    background: transparent;
    border: none;

    color: #10233e;

    font-size: 29px;
    font-weight: 900;

    letter-spacing: 4px;

    cursor: pointer;

    padding: 4px 0;

    opacity: 1;
}

/* MENU DOS TRÊS PONTOS */

.menu-opcoes {
    display: none;

    position: absolute;

    top: 75px;
    right: 24px;

    width: 305px;

    background-color: #ffffff;

    border: 2px solid #b9dfd0;
    border-radius: 16px;

    box-shadow: 0 5px 20px rgba(0, 0, 0, 0.12);

    padding: 0;

    z-index: 100;

    overflow: hidden;
}


.menu-opcoes.mostrar {
    display: block;
}


.opcao-menu {
    width: 100%;
    min-height: 64px;

    padding: 12px 22px;

    display: flex;
    align-items: center;

    gap: 18px;

    color: #071b12;

    text-decoration: none;

    font-size: 17px;

    border: none;
    border-bottom: 1px solid #d7e5df;

    background-color: #ffffff;

    transition: background-color 0.2s ease;
}


.opcao-menu:last-child {
    border-bottom: none;
}


.opcao-menu:hover {
    background-color: #f0faec;
}


.opcao-menu span:first-child {
    width: 25px;
    min-width: 25px;

    color: #087238;

    font-size: 23px;

    text-align: center;
}


.indisponivel {
    cursor: default;
    color: #4c5b53;
}

.botao-menu-mobile {
    display: none;
}


/* ÁREA DE CONVERSAS */

.area-conversas {
    padding: 10px 35px 35px;
    max-width: 900px;
}

.area-conversas h1 {
    font-size: 34px;
    margin: 10px 0 28px;
    color: #10233e;
    font-weight: 700;
}

.lista-conversas {
    display: flex;
    flex-direction: column;
    gap: 13px;
}


/* CARTÕES */

.card-conversa {
    width: 100%;
    min-height: 118px;
    display: flex;
    align-items: center;
    gap: 22px;
    padding: 14px 22px;
    background: #ffffff;
    border: 2px solid #d8e5e8;
    border-radius: 17px;
    cursor: pointer;
    text-align: left;
    transition: background 0.2s ease;
}

.card-conversa:hover {
    background: #f7fcf5;
}

.card-conversa:focus {
    outline: 3px solid #b9e7aa;
    outline-offset: 2px;
}

.card-conversa img {
    width: 90px;
    height: 90px;
    object-fit: contain;
    flex-shrink: 0;
}

.informacoes-conversa {
    flex: 1;
    min-width: 0;
}

.informacoes-conversa h2 {
    color: #2875b5;
    font-size: 23px;
    font-weight: 500;
    margin-bottom: 13px;
}

.informacoes-conversa p {
    color: #5794c5;
    font-size: 21px;
    font-weight: 400;
}

.seta-conversa {
    color: #071b22;
    font-size: 45px;
    font-weight: 300;
    line-height: 1;
}

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


    .menu-lateral.fechado .item-menu {
        min-height: 94px;
        gap: 5px;
    }


    .menu-lateral.fechado .icone {
        font-size: 39px;
    }


    .botao-tres-pontos {
        top: 25px;
        right: 18px;

        font-size: 25px;
    }


    .menu-opcoes {
        top: 65px;
        right: 15px;

        width: 305px;
        max-width: calc(100vw - 30px);
    }


    .opcao-menu {
        min-height: 58px;

        padding: 10px 16px;

        font-size: 15px;
    }
}
    </style>
    
</head>

<body>

    <div class="layout">

        <!-- MENU LATERAL -->

        <aside class="menu-lateral" id="menuLateral">

            <div class="topo-menu">

                <button class="botao-hamburguer" id="btnHamburguer">
                    ☰
                </button>

            </div>

            <nav class="navegacao">

                <a href="pesquisa.jsp" class="item-menu">
                    <span class="icone">&#128270</span>
                    <span class="texto-menu">Pesquisa</span>
                </a>

                <a href="comunidade.jsp" class="item-menu">
                    <span class="icone">&#x1F465</span>
                    <span class="texto-menu">Comunidade</span>
                </a>

                <a href="noticias.jsp" class="item-menu">
                    <span class="icone">&#x1F4F0</span>
                    <span class="texto-menu">Notícias</span>
                </a>

                <a href="chatia.jsp" class="item-menu">
                    <span class="icone">&#128172</span>
                    <span class="texto-menu">Chat com IA</span>
                </a>

                <a href="conversas.jsp"
                   class="item-menu ativo">

                    <span class="icone">&#x1F55B</span>

                    <span class="texto-menu">
                        Conversas<br>
                        recentes
                    </span>

                </a>

                <a href="perfil.jsp" class="item-menu">
                    <span class="icone">&#x1F464</span>
                    <span class="texto-menu">Perfil</span>
                </a>

            </nav>

            <div class="folhas-menu">
                <span>🌿</span>
            </div>

        </aside>


        <!-- CONTEÚDO PRINCIPAL -->

        <main class="conteudo-principal">

            <!-- CABEÇALHO -->

            <header class="cabecalho">

                <button class="botao-menu-mobile" id="btnMenuMobile">
                    ☰
                </button>

                <div class="marca">

                    <img src="img/recria_esquerda.png"
                         alt="Logo do ReCria">

                </div>

                <button class="botao-tres-pontos"
                        id="btnTresPontos"
                        aria-label="Abrir opções">

                    •••

                </button>


                <!-- MENU DOS TRÊS PONTINHOS -->

                <div class="menu-opcoes" id="menuOpcoes">

                     <a href="alterar-perfil.jsp" class="opcao-menu">
        <span>&#x1F9B2;</span>
        <span>Alterar perfil</span>
    </a>

    <a href="solicitacao-ajuda.jsp" class="opcao-menu">
        <span>&#x2753;</span>
        <span>Enviar solicitação de ajuda</span>
    </a>

    <a href="moderador.jsp"
   class="opcao-menu"
   id="opcaoModerador"
   style="display: none;">
    <span>&#x1F6E1;&#xFE0F;</span>
    <span>Moderador</span>
</a>

    <a href="administrador.jsp"
       class="opcao-menu"
       id="opcaoAdministrador"
       style="display: none;">
        <span>&#x2699;&#xFE0F;</span>
        <span>Administrador</span>
    </a>
                    
                </div>

            </header>


            <!-- CONVERSAS RECENTES -->

            <section class="area-conversas">

                <h1>Conversas recentes</h1>

                <div class="lista-conversas">


                    <button class="card-conversa" type="button">

                        <img src="img/logo_recria.png"
                             alt="Logo do ReCria">

                        <div class="informacoes-conversa">

                            <h2>Ideias de reutilização</h2>

                            <p>10/06/2025</p>

                        </div>

                        <span class="seta-conversa">›</span>

                    </button>


                    <button class="card-conversa" type="button">

                        <img src="img/logo_recria.png"
                             alt="Logo do ReCria">

                        <div class="informacoes-conversa">

                            <h2>Projeto de horta</h2>

                            <p>08/06/2025</p>

                        </div>

                        <span class="seta-conversa">›</span>

                    </button>


                    <button class="card-conversa" type="button">

                        <img src="img/logo_recria.png"
                             alt="Logo do ReCria">

                        <div class="informacoes-conversa">

                            <h2>Dúvidas sobre materiais</h2>

                            <p>05/06/2025</p>

                        </div>

                        <span class="seta-conversa">›</span>

                    </button>


                    <button class="card-conversa" type="button">

                        <img src="img/logo_recria.png"
                             alt="Logo do ReCria">

                        <div class="informacoes-conversa">

                            <h2>Sugestões de projetos</h2>

                            <p>02/06/2025</p>

                        </div>

                        <span class="seta-conversa">›</span>

                    </button>


                    <button class="card-conversa" type="button">

                        <img src="img/logo_recria.png"
                             alt="Logo do ReCria">

                        <div class="informacoes-conversa">

                            <h2>Campanha ambiental</h2>

                            <p>28/05/2025</p>

                        </div>

                        <span class="seta-conversa">›</span>

                    </button>

                </div>

            </section>

        </main>

    </div>


    <script>

        const menuLateral =
            document.getElementById("menuLateral");

        const btnHamburguer =
            document.getElementById("btnHamburguer");

        const btnMenuMobile =
            document.getElementById("btnMenuMobile");

        const btnTresPontos =
            document.getElementById("btnTresPontos");

        const menuOpcoes =
            document.getElementById("menuOpcoes");
    
     const opcaoModerador =
    document.getElementById("opcaoModerador");
    opcaoModerador.addEventListener("click", function () {
    sessionStorage.setItem("paginaOrigemModerador", "conversas.jsp");
});

const opcaoAdministrador =
    document.getElementById("opcaoAdministrador");

// Identificar o perfil salvo pelo login

let usuarioLogado = null;

try {
    usuarioLogado = JSON.parse(
        localStorage.getItem("recriaUsuarioLogado")
    );
} catch (erro) {
    usuarioLogado = null;
}

const perfil = usuarioLogado && usuarioLogado.perfil
    ? usuarioLogado.perfil.toLowerCase().trim()
    : "usuario";


// Opções do menu dos três pontinhos

const opcaoAlterarPerfil =
    menuOpcoes.querySelector('a[href="alterar-perfil.jsp"]');

const opcaoSolicitacaoAjuda =
    menuOpcoes.querySelector('a[href="solicitacao-ajuda.jsp"]');


// Esconder todas as opções antes de verificar o perfil

opcaoAlterarPerfil.style.display = "none";
opcaoSolicitacaoAjuda.style.display = "none";
opcaoModerador.style.display = "none";
opcaoAdministrador.style.display = "none";


// Mostrar somente as opções permitidas para cada perfil

if (perfil === "usuario") {
    opcaoAlterarPerfil.style.display = "flex";
    opcaoSolicitacaoAjuda.style.display = "flex";
} else if (perfil === "moderador") {
    opcaoModerador.style.display = "flex";
} else if (perfil === "administrador") {
    opcaoAdministrador.style.display = "flex";
}


        btnHamburguer.addEventListener("click", function () {

            menuLateral.classList.toggle("fechado");

        });


        btnMenuMobile.addEventListener("click", function (evento) {

            evento.stopPropagation();

            menuLateral.classList.toggle("aberto");

        });


        btnTresPontos.addEventListener("click", function (evento) {

            evento.stopPropagation();

            menuOpcoes.classList.toggle("mostrar");

        });


        menuOpcoes.addEventListener("click", function (evento) {

            evento.stopPropagation();

        });


        document.addEventListener("click", function () {

            menuOpcoes.classList.remove("mostrar");

        });

    </script>

</body>

</html>