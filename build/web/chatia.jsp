<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ReCria - Chat com IA</title>
    <link rel="stylesheet" href="css/chat.css">

    <style>
/* RESET */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* CONFIGURAÇÕES GERAIS */
html,
body {
    width: 100%;
    height: 100%;
    overflow: hidden;
}

body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: #ffffff;
    color: #071b12;
}

/* LAYOUT PRINCIPAL */
.layout {
    width: 100%;
    height: 100vh;
    overflow: hidden;
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
    transition: width 0.3s ease, left 0.3s ease;
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
    height: 100vh;
    margin-left: 185px;
    min-width: 0;
    display: flex;
    flex-direction: column;
    position: relative;
    background-color: #ffffff;
    overflow: hidden;
    transition: width 0.3s ease, margin-left 0.3s ease;
}

.menu-lateral.fechado + .conteudo-principal {
    width: calc(100% - 85px);
    margin-left: 85px;
}

/* CABEÇALHO */
.cabecalho {
    height: 95px;
    flex-shrink: 0;
    position: relative;
    display: flex;
    justify-content: flex-end;
    align-items: flex-start;
    padding: 24px 28px;
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

/* BOTÃO MOBILE */
.botao-menu-mobile {
    display: none;
    background: transparent;
    border: none;
    font-size: 32px;
    cursor: pointer;
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

/* ÁREA DE APRESENTAÇÃO */
.area-chat {
    flex: 1;
    min-height: 0;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    padding: 20px;
    margin-top: -30px;
}

.logo-recria {
    width: 340px;
    max-width: 80%;
    height: auto;
    object-fit: contain;
    margin-bottom: 28px;
}

.area-chat h1 {
    font-size: 36px;
    margin-bottom: 28px;
    color: #071b12;
}

.mensagem-apresentacao {
    font-size: 25px;
    line-height: 1.35;
    color: #5685a7;
}

/* ÁREA DE MENSAGEM */
.area-mensagem {
    width: calc(100% - 80px);
    max-width: 760px;
    flex-shrink: 0;
    margin: 20px auto 40px;
    border: 2px solid #c8e5df;
    border-radius: 22px;
    padding: 20px 28px;
    background-color: #ffffff;
}

.area-mensagem textarea {
    width: 100%;
    height: 55px;
    resize: none;
    border: none;
    outline: none;
    background-color: transparent;
    font-family: Arial, Helvetica, sans-serif;
    font-size: 21px;
    color: #071b12;
}

.area-mensagem textarea::placeholder {
    color: #6185a2;
    opacity: 1;
}

/* BOTÕES DA MENSAGEM */
.botoes-mensagem {
    display: flex;
    align-items: center;
    gap: 18px;
}

.botao-mensagem {
    width: 66px;
    height: 66px;
    border: 2px solid #c8e5df;
    border-radius: 50%;
    background-color: #ffffff;
    font-size: 35px;
    cursor: pointer;
    color: #071b12;
    display: flex;
    justify-content: center;
    align-items: center;
}

.botao-enviar {
    width: 68px;
    height: 68px;
    border: none;
    border-radius: 50%;
    background-color: #078c43;
    color: #ffffff;
    font-size: 35px;
    cursor: pointer;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-left: auto;
}

.botao-enviar:hover {
    background-color: #056c34;
}

.botao-mensagem:hover {
    background-color: #e8f8e3;
}

/* RESPONSIVIDADE */
@media (max-width: 768px) {
    body {
        overflow: hidden;
    }

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

    .conteudo-principal,
    .menu-lateral.fechado + .conteudo-principal {
        width: 100%;
        height: 100vh;
        margin-left: 0;
    }

    .botao-menu-mobile {
        display: block;
        position: absolute;
        left: 20px;
        top: 24px;
    }

    .cabecalho {
        height: 80px;
        padding: 20px;
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

    .area-chat {
        margin-top: 0;
        padding: 15px;
    }

    .logo-recria {
        width: 240px;
        margin-bottom: 25px;
    }

    .area-chat h1 {
        font-size: 27px;
        margin-bottom: 20px;
    }

    .mensagem-apresentacao {
        font-size: 18px;
    }

    .area-mensagem {
        width: calc(100% - 28px);
        margin: 15px auto 20px;
        padding: 15px;
        border-radius: 18px;
    }

    .area-mensagem textarea {
        font-size: 16px;
        height: 48px;
    }

    .botao-mensagem {
        width: 48px;
        height: 48px;
        font-size: 25px;
    }

    .botao-enviar {
        width: 52px;
        height: 52px;
        font-size: 26px;
    }
}

@media (max-width: 400px) {
    .logo-recria {
        width: 210px;
    }

    .area-chat h1 {
        font-size: 24px;
    }

    .mensagem-apresentacao {
        font-size: 16px;
    }

    .botoes-mensagem {
        gap: 10px;
    }
}
    </style>
</head>

<body>

    <div class="layout">

        <!-- MENU LATERAL: MANTIDO -->

        <aside class="menu-lateral" id="menuLateral">

            <div class="topo-menu">
                <button class="botao-hamburguer"
                        id="btnHamburguer"
                        aria-label="Abrir menu">
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

                <div class="item-menu ativo" aria-current="page">
                    <span class="icone">&#128172</span>
                    <span class="texto-menu">Chat com IA</span>
                </div>

                <a href="conversas.jsp" class="item-menu">
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


        <main class="conteudo-principal">

            <header class="cabecalho">

                <button class="botao-menu-mobile"
                        id="btnMenuMobile"
                        aria-label="Abrir menu">
                    ☰
                </button>

                <!-- TRÊS PONTINHOS: POSIÇÃO MANTIDA -->

                <button class="botao-tres-pontos"
                        id="btnTresPontos"
                        aria-label="Abrir opções">
                    •••
                </button>

                <!-- MENU DOS TRÊS PONTOS -->

                <div class="menu-opcoes" id="menuOpcoes">

                    <a href="alterar-perfil.jsp" class="opcao-menu">
                        <span>&#x1F9B2;</span>
                        <span>Alterar perfil</span>
                    </a>

                    <a href="solicitacao-ajuda.jsp" class="opcao-menu">
                        <span>&#x2753;</span>
                        <span>Enviar solicitação de ajuda</span>
                    </a>

                    <!-- Visível somente para a conta de moderador -->

<a href="moderador.jsp"
   class="opcao-menu"
   id="opcaoModerador"
   style="display: none;">
    <span>&#x1F6E1;&#xFE0F;</span>
    <span>Moderador</span>
</a>

                    <!-- Visível somente para a conta de administrador -->

                    <a href="administrador.jsp"
                       class="opcao-menu"
                       id="opcaoAdministrador"
                       style="display: none;">
                        <span>&#x2699;&#xFE0F;</span>
                        <span>Administrador</span>
                    </a>

                </div>

            </header>


            <section class="area-chat">

                <img src="img/logo_recria.png"
                     alt="Logo do ReCria"
                     class="logo-recria">

                <h1>Chat com a IA</h1>

                <p class="mensagem-apresentacao">
                    Olá! Como posso te ajudar<br>
                    hoje? Pergunte sobre ideias,<br>
                    projetos, materiais e muito mais!
                </p>

            </section>


            <section class="area-mensagem">

                <textarea id="campoMensagem"
                          placeholder="Digite sua mensagem..."
                          aria-label="Digite sua mensagem"></textarea>

                <div class="botoes-mensagem">

                    <button type="button"
                            class="botao-mensagem"
                            aria-label="Adicionar imagem">
                        &#x1F4F7
                    </button>

                    <button type="button"
                            class="botao-mensagem"
                            aria-label="Gravar áudio">
                        &#x1F3A4
                    </button>

                    <button type="button"
                            class="botao-enviar"
                            aria-label="Enviar mensagem">
                        ➤
                    </button>

                </div>

            </section>

        </main>

    </div>


    <!-- JAVASCRIPT -->

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
    sessionStorage.setItem("paginaOrigemModerador", "chatia.jsp");
});


        const opcaoAdministrador =
            document.getElementById("opcaoAdministrador");


        // Abrir e fechar o menu lateral: mantido

        btnHamburguer.addEventListener("click", function () {

            if (window.innerWidth <= 768) {
                menuLateral.classList.toggle("aberto");
            } else {
                menuLateral.classList.toggle("fechado");
            }

        });


        // Abrir menu no celular: mantido

        btnMenuMobile.addEventListener("click", function () {
            menuLateral.classList.toggle("aberto");
        });

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

        // Abrir e fechar o menu dos três pontinhos: mantido

        btnTresPontos.addEventListener("click", function (evento) {
            evento.stopPropagation();
            menuOpcoes.classList.toggle("mostrar");
        });


        // Impedir o fechamento ao clicar dentro do menu: mantido

        menuOpcoes.addEventListener("click", function (evento) {
            evento.stopPropagation();
        });


        // Fechar o menu ao clicar fora: mantido

        document.addEventListener("click", function () {
            menuOpcoes.classList.remove("mostrar");
        });


        // Botões visuais, sem funcionalidade nesta etapa: mantido

        const botoesVisuais = document.querySelectorAll(
            ".botao-mensagem, .botao-enviar"
        );

        botoesVisuais.forEach(function (botao) {
            botao.addEventListener("click", function () {
                // Sem envio real de mensagens nesta etapa
            });
        });

    </script>

</body>
</html>
