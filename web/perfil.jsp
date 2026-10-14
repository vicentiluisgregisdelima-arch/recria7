<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    String nome = (String) session.getAttribute("nome");
    String email = (String) session.getAttribute("email");
    String local = (String) session.getAttribute("local");

    if (nome == null) {
        nome = "ana costa";
    }

    if (email == null) {
        email = "anacosta@email.com";
    }

    if (local == null) {
        local = "Paraná, Brasil";
    }
%>

<!DOCTYPE html>
<html lang="pt-BR">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ReCria - Perfil</title>

    <link rel="stylesheet" href="css/perfil.css">

    <style>
        
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}


body {
    font-family: Arial, Helvetica, sans-serif;

    background-color: #ffffff;
    color: #071b12;

    min-height: 100vh;
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

    background-color: #ffffff;

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
    height: 95px;

    position: relative;

    display: flex;
    align-items: center;
    justify-content: center;

    padding: 20px 28px;
}


.marca img {
    width: 110px;
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

/* ÁREA DO PERFIL */

.area-perfil {
    width: 100%;
    max-width: 1000px;

    margin: 0 auto;

    padding: 0 35px 45px;

    text-align: center;
}


.area-perfil h1 {
    text-align: left;

    color: #10233e;

    font-size: 38px;

    margin-bottom: 25px;
}


/* FOTO DE PERFIL FIXA */

.foto-perfil {
    width: 205px;
    height: 205px;

    margin: 0 auto 20px;

    border: 2px solid #9bd5b9;
    border-radius: 50%;

    background-color: #edf9e8;

    display: flex;
    align-items: center;
    justify-content: center;
}


.icone-usuario {
    color: #008344;

    font-size: 125px;
    line-height: 1;
}


/* INFORMAÇÕES */

.area-perfil h2 {
    color: #10233e;

    font-size: 38px;

    margin-bottom: 12px;
}


.email-usuario {
    color: #2875b5;

    font-size: 28px;

    margin-bottom: 20px;
}


.local-usuario {
    color: #5794c5;

    font-size: 27px;

    margin-bottom: 65px;
}


.local-usuario span {
    color: #078c43;
}


/* PROJETOS SALVOS */

.area-perfil h3 {
    color: #10233e;

    font-size: 32px;

    text-align: left;

    margin-bottom: 22px;
}


.projetos-salvos {
    display: grid;

    grid-template-columns: repeat(3, 1fr);

    gap: 25px;

    margin-bottom: 35px;
}


.projeto-imagem {
    width: 100%;
    height: 180px;

    border-radius: 18px;

    overflow: hidden;
}


.projeto-imagem img {
    width: 100%;
    height: 100%;

    object-fit: cover;

    display: block;
}


/* BOTÃO VER MAIS */

.botao-ver-mais {
    width: 100%;

    padding: 17px;

    border: 2px solid #b9dfd0;
    border-radius: 18px;

    background-color: #ffffff;

    color: #078c43;

    font-size: 25px;
    font-weight: bold;

    cursor: default;
}

.botao-sair {
    display: block;
    width: 220px;
    padding: 15px 25px;
    margin: 25px auto 10px;

    background-color: #dc3545;
    color: #ffffff;

    border: none;
    border-radius: 12px;

    font-size: 19px;
    font-weight: bold;

    text-align: center;
    cursor: pointer;
}

.botao-sair:hover {
    background-color: #bd2837;
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

@media (max-width: 400px) {


    .area-perfil {
        padding: 0 12px 25px;
    }


    .foto-perfil {
        width: 135px;
        height: 135px;
    }


    .icone-usuario {
        font-size: 80px;
    }


    .area-perfil h2 {
        font-size: 26px;
    }


    .email-usuario {
        font-size: 17px;
    }


    .local-usuario {
        font-size: 18px;
    }


    .projeto-imagem {
        height: 90px;
    }

}
    </style>
    
</head>

<body>

    <div class="layout">


        <!-- MENU LATERAL -->

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

                    <span class="texto-menu">
                        Pesquisa
                    </span>

                </a>


                <a href="comunidade.jsp" class="item-menu">

                    <span class="icone">&#x1F465</span>

                    <span class="texto-menu">
                        Comunidade
                    </span>

                </a>


                <a href="noticias.jsp" class="item-menu">

                    <span class="icone">&#x1F4F0</span>

                    <span class="texto-menu">
                        Notícias
                    </span>

                </a>


                <a href="chatia.jsp" class="item-menu">

                    <span class="icone">&#128172</span>

                    <span class="texto-menu">
                        Chat com IA
                    </span>

                </a>


                <a href="conversas.jsp" class="item-menu">

                    <span class="icone">&#x1F55B</span>

                    <span class="texto-menu">

                        Conversas<br>
                        recentes

                    </span>

                </a>


                <div class="item-menu ativo">

                    <span class="icone">&#x1F464</span>

                    <span class="texto-menu">
                        Perfil
                    </span>

                </div>

            </nav>


            <div class="folhas-menu">
                🌿
            </div>

        </aside>


        <!-- CONTEÚDO PRINCIPAL -->

        <main class="conteudo-principal">


            <!-- CABEÇALHO -->

            <header class="cabecalho">


                <button class="botao-menu-mobile"
                        id="btnMenuMobile"
                        aria-label="Abrir menu">

                    

                </button>


                <div class="marca">

                    <img src="img/logo_recria.png"
                         alt="Logo do ReCria">

                </div>


                <!-- TRÊS PONTINHOS -->

                <button class="botao-tres-pontos"
                        id="btnTresPontos"
                        aria-label="Abrir opções">

                    •••

                </button>


                <!-- MENU DE OPÇÕES -->

                <div class="menu-opcoes"
                     id="menuOpcoes">

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


            <!-- PERFIL -->

            <section class="area-perfil">


                <h1>
                    Perfil
                </h1>


                <!-- FOTO FIXA -->

                <div class="foto-perfil">

                    <span class="icone-usuario">
                        &#x1F9B2
                    </span>

                </div>


                <!-- DADOS DO USUÁRIO -->

                <h2>
                    <%= nome %>
                </h2>


                <p class="email-usuario">
                    <%= email %>
                </p>


                <p class="local-usuario">

                    <span></span>

                    <%= local %>

                </p>


                <!-- PROJETOS SALVOS -->

                <h3>
                    Projetos salvos
                </h3>


                <div class="projetos-salvos">


                    <div class="projeto-imagem">

                        <img src="img/casinha_passarinho.png"
                             alt="Casinha de pássaros feita com papelão">

                    </div>


                    <div class="projeto-imagem">

                        <img src="img/vasos_pet.png"
                             alt="Vaso decorativo feito com garrafa PET">

                    </div>


                    <div class="projeto-imagem">

                        <img src="img/organizador.png"
                             alt="Porta-lápis reciclável">

                    </div>

                </div>


                <!-- BOTÃO APENAS VISUAL -->

                <button class="botao-ver-mais"
                        type="button">

                    Ver mais

                </button>

                <!-- BOTÃO SAIR -->

<button class="botao-sair"
        type="button"
        id="btnSair">
    Sair
</button>

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
    sessionStorage.setItem("paginaOrigemModerador", "perfil.jsp");
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

// BOTÃO SAIR: VOLTAR À TELA INICIAL

const btnSair = document.getElementById("btnSair");

btnSair.addEventListener("click", function () {
    window.location.href = "index.jsp";
});

        // Menu lateral

        btnHamburguer.addEventListener("click", function () {

            menuLateral.classList.toggle("fechado");

        });


        // Menu mobile

        btnMenuMobile.addEventListener("click", function (evento) {

            evento.stopPropagation();

            menuLateral.classList.toggle("aberto");

        });


        // Três pontinhos

        btnTresPontos.addEventListener("click", function (evento) {

            evento.stopPropagation();

            menuOpcoes.classList.toggle("mostrar");

        });


        // Impede o fechamento dentro do menu

        menuOpcoes.addEventListener("click", function (evento) {

            evento.stopPropagation();

        });


        // Fecha ao clicar fora

        document.addEventListener("click", function () {

            menuOpcoes.classList.remove("mostrar");

        });


    </script>


</body>

</html>