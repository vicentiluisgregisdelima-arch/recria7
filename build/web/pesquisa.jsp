<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pt-BR">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ReCria - Pesquisa</title>

    <link rel="stylesheet" href="css/pesquisa.css">

    <style>
       /* RESET */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}


/* CONFIGURAÇÕES GERAIS */

body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: #ffffff;
    color: #071b12;
    min-height: 100vh;
}


/* LAYOUT PRINCIPAL */

.layout {
    display: flex;
    min-height: 100vh;
    overflow: visible;
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
    display: flex;
    flex-direction: column;

    gap: 3px;
    padding: 0 10px;
}


/* ITENS DO MENU */

.item-menu {
    min-height: 94px;

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


/* MENU FECHADO */

.menu-lateral.fechado {
    width: 85px;
}

.menu-lateral.fechado .texto-menu {
    display: none;
}

.menu-lateral.fechado .item-menu {
    min-height: 94px;
}

.menu-lateral.fechado .icone {
    font-size: 39px;
}


/* CONTEÚDO PRINCIPAL */

.conteudo-principal {
    width: calc(100% - 185px);

    margin-left: 185px;

    min-height: 100vh;

    background-color: #ffffff;

    position: relative;

    transition: margin-left 0.3s ease;
}


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
    justify-content: space-between;

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


/* BOTÃO MOBILE */

.botao-menu-mobile {
    display: none;

    background: transparent;
    border: none;

    font-size: 32px;

    cursor: pointer;
}


/* MENU DOS TRÊS PONTINHOS */

.menu-opcoes {
    display: none;

    position: absolute;

    top: 75px;
    right: 24px;

    width: 305px;

    background-color: #ffffff;

    border: 2px solid #b9dfd0;
    border-radius: 16px;

    box-shadow: 0 4px 18px rgba(0, 0, 0, 0.12);

    overflow: hidden;

    z-index: 100;
}


.menu-opcoes.mostrar {
    display: block;
}


.opcao-menu {
    min-height: 64px;

    padding: 12px 22px;

    display: flex;
    align-items: center;

    gap: 18px;

    color: #071b12;

    text-decoration: none;

    font-size: 17px;

    border-bottom: 1px solid #dce9e0;

    transition: background-color 0.2s ease;
}


.opcao-menu:last-child {
    border-bottom: none;
}


.opcao-menu:hover {
    background-color: #e8f8e3;
}


.opcao-menu span:first-child {
    color: #087238;

    font-size: 27px;

    min-width: 25px;

    text-align: center;
}


.indisponivel {
    cursor: default;
    color: #4c5b53;
}


/* ÁREA DA PESQUISA */

.area-pesquisa {
    width: 100%;
    max-width: 1000px;

    margin: 0 auto;

    padding: 0 35px 45px;
}


.area-pesquisa h1 {
    font-size: 32px;
    margin-bottom: 18px;
}


.area-pesquisa h2 {
    font-size: 20px;
    margin: 18px 0 10px;
}


/* CAMPO DE PESQUISA */

.campo-pesquisa {
    width: 100%;
    height: 54px;

    display: flex;
    align-items: center;

    gap: 12px;

    border: 2px solid #d0e6df;
    border-radius: 16px;

    padding: 0 15px;

    background-color: #ffffff;
}


.icone-pesquisa {
    font-size: 30px;
    color: #071b12;
}


.campo-pesquisa input {
    flex: 1;

    width: 100%;
    height: 100%;

    border: none;
    outline: none;

    background: transparent;

    font-size: 16px;
    color: #071b12;
}


.campo-pesquisa input::placeholder {
    color: #7190a5;
}


/* BOTÕES DE MATERIAIS */

.materiais {
    display: grid;

    grid-template-columns: repeat(3, 1fr);

    gap: 10px;
}


.botao-material {
    min-height: 45px;

    border: 1px solid #c8e5df;
    border-radius: 25px;

    background-color: #ffffff;
    color: #315b4a;

    font-size: 15px;

    cursor: pointer;

    padding: 8px 10px;

    transition:
        background-color 0.2s ease,
        color 0.2s ease,
        border-color 0.2s ease;
}


.botao-material:hover {
    background-color: #e8f8e3;
}


.botao-material.selecionado {
    background-color: #078c43;

    border-color: #078c43;

    color: #ffffff;
}


/* PROJETOS */

.titulo-projetos {
    margin-top: 24px !important;
}


.lista-projetos {
    display: grid;

    grid-template-columns: repeat(2, minmax(0, 1fr));

    gap: 18px;
}


.card-projeto {
    border: 1px solid #d7e8df;
    border-radius: 16px;

    padding: 10px;

    display: flex;
    flex-direction: column;

    background-color: #ffffff;

    min-width: 0;
}


.card-projeto img {
    width: 100%;
    height: 135px;

    object-fit: cover;

    border-radius: 12px;

    margin-bottom: 10px;
}


.card-projeto h3 {
    font-size: 16px;

    line-height: 1.25;

    min-height: 40px;

    margin-bottom: 6px;
}


.card-projeto p {
    color: #5d776b;

    font-size: 13px;

    line-height: 1.35;

    margin-bottom: 12px;
}


.botao-detalhes {
    width: 100%;

    margin-top: auto;

    padding: 10px 8px;

    border: none;
    border-radius: 20px;

    background-color: #078c43;
    color: #ffffff;

    font-size: 14px;
    font-weight: bold;

    cursor: pointer;
}


.botao-detalhes:hover {
    background-color: #056c34;
}


/* SEM RESULTADOS */

.sem-resultados {
    display: none;

    text-align: center;

    color: #5d776b;

    padding: 30px 10px;

    font-size: 16px;
}


/* RESPONSIVIDADE */

@media (max-width: 768px) {

    .menu-lateral {
    position: fixed;
    left: 0;
    top: 0;

    width: 185px;
    height: 100vh;

    background-color: #effbe8;
    border-right: 1px solid #a8d8bd;

    display: flex;
    flex-direction: column;

    z-index: 50;
    overflow: hidden;

    transition: width 0.3s ease;
}


    .menu-lateral.aberto {
        left: 0;
    }


    .menu-lateral.fechado {
        left: -185px;
        width: 185px;
    }


    .menu-lateral.fechado .texto-menu {
        display: inline;
    }


    .menu-lateral.fechado .item-menu {
        min-height: 94px;
    }


    .menu-lateral.fechado .icone {
        font-size: 39px;
    }


    .conteudo-principal,
    .menu-lateral.fechado + .conteudo-principal {
        width: 100%;
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


    .marca {
        margin-left: 45px;
    }


    .marca img {
        width: 100px;
    }


    .botao-tres-pontos {
        top: 25px;
        right: 18px;

        font-size: 25px;
    }


    .menu-opcoes {
        top: 65px;
        right: 15px;

        width: 270px;
    }


    .area-pesquisa {
        padding: 0 18px 30px;
    }


    .area-pesquisa h1 {
        font-size: 27px;
        margin-bottom: 16px;
    }


    .area-pesquisa h2 {
        font-size: 17px;
    }


    .campo-pesquisa {
        height: 48px;
    }


    .icone-pesquisa {
        font-size: 27px;
    }


    .campo-pesquisa input {
        font-size: 14px;
    }


    .materiais {
        gap: 8px;
    }


    .botao-material {
        font-size: 12px;

        min-height: 40px;

        padding: 6px;
    }


    .lista-projetos {
        gap: 12px;
    }


    .card-projeto {
        padding: 7px;
        border-radius: 12px;
    }


    .card-projeto img {
        height: 105px;
        border-radius: 9px;
    }


    .card-projeto h3 {
        font-size: 13px;
        min-height: 34px;
    }


    .card-projeto p {
        font-size: 11px;
    }


    .botao-detalhes {
        font-size: 12px;
        padding: 9px 4px;
    }

}


@media (max-width: 400px) {

    .area-pesquisa {
        padding: 0 12px 25px;
    }


    .area-pesquisa h1 {
        font-size: 25px;
    }


    .materiais {
        gap: 6px;
    }


    .botao-material {
        font-size: 11px;
    }


    .lista-projetos {
        gap: 10px;
    }


    .card-projeto img {
        height: 90px;
    }


    .card-projeto h3 {
        font-size: 12px;
    }

}
    </style>

</head>


<body>

    <div class="layout">

        <!-- MENU LATERAL -->

        <aside class="menu-lateral" id="menuLateral">

            <div class="topo-menu">

                <button
                    class="botao-hamburguer"
                    id="btnHamburguer"
                    aria-label="Fechar menu">

                    ☰

                </button>

            </div>


            <nav class="navegacao">

                <!-- PESQUISA: TELA ATUAL -->

                <div
                    class="item-menu ativo"
                    aria-current="page">

                    <span class="icone">&#128270</span>

                    <span class="texto-menu">
                        Pesquisa
                    </span>

                </div>


                <a
                    href="comunidade.jsp"
                    class="item-menu">

                    <span class="icone">&#x1F465</span>

                    <span class="texto-menu">
                        Comunidade
                    </span>

                </a>


                <a
                    href="noticias.jsp"
                    class="item-menu">

                    <span class="icone">&#x1F4F0</span>

                    <span class="texto-menu">
                        Notícias
                    </span>

                </a>


                <a
                    href="chatia.jsp"
                    class="item-menu">

                    <span class="icone">&#128172</span>

                    <span class="texto-menu">
                        Chat com IA
                    </span>

                </a>


                <a
                    href="conversas.jsp"
                    class="item-menu">

                    <span class="icone">&#x1F55B</span>

                    <span class="texto-menu">

                        Conversas<br>
                        recentes

                    </span>

                </a>


                <a
                    href="perfil.jsp"
                    class="item-menu">

                    <span class="icone">&#x1F464</span>

                    <span class="texto-menu">
                        Perfil
                    </span>

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

                <button
                    class="botao-menu-mobile"
                    id="btnMenuMobile"
                    aria-label="Abrir menu">

                    ☰

                </button>


                <div class="marca">

                    <img
                        src="img/recria_esquerda.png"
                        alt="Logo do ReCria">

                </div>


                <button
                    class="botao-tres-pontos"
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


            <!-- ÁREA DA PESQUISA -->

            <section class="area-pesquisa">


                <h1>
                    Pesquisa
                </h1>


                <!-- CAMPO DE PESQUISA -->

                <div class="campo-pesquisa">

                    <span class="icone-pesquisa">
                        ⌕
                    </span>


                    <input
                        type="text"
                        id="campoPesquisa"
                        placeholder="Digite o material que você tem..."
                        aria-label="Pesquisar material">

                </div>


                <!-- MATERIAIS -->

                <h2>
                    Alguns materiais
                </h2>


                <div class="materiais">


                    <button
                        class="botao-material"
                        data-material="papelao">

                        Papelão

                    </button>


                    <button
                        class="botao-material"
                        data-material="garrafa pet">

                        Garrafa PET

                    </button>


                    <button
                        class="botao-material"
                        data-material="tampinhas">

                        Tampinhas

                    </button>


                    <button
                        class="botao-material"
                        data-material="vidro">

                        Vidro

                    </button>


                    <button
                        class="botao-material"
                        data-material="plastico">

                        Plástico

                    </button>


                    <button
                        class="botao-material"
                        data-material="papel">

                        Papel

                    </button>

                </div>


                <!-- TÍTULO DOS PROJETOS -->

                <h2
                    class="titulo-projetos"
                    id="tituloProjetos">

                    Ideias de projetos com esse material

                </h2>


                <!-- LISTA DE PROJETOS -->

                <div
                    class="lista-projetos"
                    id="listaProjetos">


                    <!-- PROJETO 1 -->

                    <article
                        class="card-projeto"
                        data-materials="papelao papel">

                        <img
                            src="img/casinha_passarinho.png"
                            alt="Casinha de pássaros feita com papelão">


                        <h3>
                            Casinha de pássaros com papelão
                        </h3>


                        <p>
                            Projeto criativo utilizando papelão.
                        </p>


                        <button
                            class="botao-detalhes"
                            type="button">

                            Ver detalhes

                        </button>

                    </article>


                    <!-- PROJETO 2 -->

                    <article
                        class="card-projeto"
                        data-materials="garrafa pet plastico">

                        <img
                            src="img/vaso_garrafa.png"
                            alt="Vaso feito com garrafa PET">


                        <h3>
                            Vaso com garrafa PET
                        </h3>


                        <p>
                            Transforme uma garrafa em um vaso.
                        </p>


                        <button
                            class="botao-detalhes"
                            type="button">

                            Ver detalhes

                        </button>

                    </article>


                    <!-- PROJETO 3 -->

                    <article
                        class="card-projeto"
                        data-materials="papelao">

                        <img
                            src="img/organizador.png"
                            alt="Organizador de mesa de papelão">


                        <h3>
                            Organizador de mesa com papelão
                        </h3>


                        <p>
                            Organizador feito com materiais reutilizados.
                        </p>


                        <button
                            class="botao-detalhes"
                            type="button">

                            Ver detalhes

                        </button>

                    </article>

                                        <!-- PROJETO 4 -->

                    <article
                        class="card-projeto"
                        data-materials="madeira pallet">

                        <img
                            src="img/horta_pallet.png"
                            alt="Horta vertical feita com pallet reutilizado">

                        <h3>
                            Horta vertical de pallet
                        </h3>

                        <p>
                            Aproveite um pallet para criar uma horta vertical.
                        </p>

                        <button
                            class="botao-detalhes"
                            type="button">

                            Ver detalhes

                        </button>

                    </article>

                                        <!-- PROJETO 5 -->

                    <article
                        class="card-projeto"
                        data-materials="garrafa pet plastico">

                        <img
                            src="img/vasos_pet.png"
                            alt="Vasos suspensos feitos com garrafas PET">

                        <h3>
                            Vasos suspensos de PET
                        </h3>

                        <p>
                            Transforme garrafas PET em vasos suspensos para plantas.
                        </p>

                        <button
                            class="botao-detalhes"
                            type="button">

                            Ver detalhes

                        </button>

                    </article>

                                        <!-- PROJETO 6 -->

                    <article
                        class="card-projeto"
                        data-materials="madeira pallet">

                        <img
                            src="img/banco_pallet.png"
                            alt="Banco feito com pallet reutilizado">

                        <h3>
                            Banco de pallet
                        </h3>

                        <p>
                            Reutilize um pallet para criar um banco.
                        </p>

                        <button
                            class="botao-detalhes"
                            type="button">

                            Ver detalhes

                        </button>

                    </article>

                </div>


                <!-- SEM RESULTADOS -->

                <p
                    class="sem-resultados"
                    id="semResultados">

                    Nenhum projeto encontrado para esse material.

                </p>

            </section>

        </main>

    </div>


    <!-- JAVASCRIPT -->

    <script>


        // ELEMENTOS DO MENU

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
    sessionStorage.setItem("paginaOrigemModerador", "pesquisa.jsp");
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


        // ABRIR E FECHAR MENU NO COMPUTADOR

        btnHamburguer.addEventListener("click", function () {

            menuLateral.classList.toggle("fechado");

        });


        // ABRIR MENU NO CELULAR

        btnMenuMobile.addEventListener("click", function (evento) {

            evento.stopPropagation();

            menuLateral.classList.toggle("aberto");

        });


        // ABRIR MENU DOS TRÊS PONTINHOS

        btnTresPontos.addEventListener("click", function (evento) {

            evento.stopPropagation();

            menuOpcoes.classList.toggle("mostrar");

        });


        // IMPEDIR FECHAMENTO AO CLICAR DENTRO DO MENU

        menuOpcoes.addEventListener("click", function (evento) {

            evento.stopPropagation();

        });


        // FECHAR MENU AO CLICAR FORA

        document.addEventListener("click", function () {

            menuOpcoes.classList.remove("mostrar");

        });


        // ELEMENTOS DA PESQUISA

        const campoPesquisa =
            document.getElementById("campoPesquisa");


        const botoesMaterial =
            document.querySelectorAll(".botao-material");


        const cardsProjeto =
            document.querySelectorAll(".card-projeto");


        const tituloProjetos =
            document.getElementById("tituloProjetos");


        const semResultados =
            document.getElementById("semResultados");


        // MATERIAIS SELECIONADOS

        let materiaisSelecionados = [];


        // NORMALIZAR TEXTO

        function normalizarTexto(texto) {

            return texto
                .toLowerCase()
                .normalize("NFD")
                .replace(/[\u0300-\u036f]/g, "");

        }


        // ATUALIZAR PROJETOS

        function atualizarProjetos() {


            const textoDigitado =
                normalizarTexto(campoPesquisa.value.trim());


            let quantidadeVisivel = 0;


            // SE NÃO HOUVER PESQUISA OU MATERIAL,
            // ESCONDER TUDO

            if (textoDigitado === ""
                    && materiaisSelecionados.length === 0) {


                cardsProjeto.forEach(function (card) {

                    card.style.display = "none";

                });


                tituloProjetos.style.display = "none";


                semResultados.style.display = "none";


                return;

            }


            // MOSTRAR O TÍTULO QUANDO HOUVER PESQUISA

            tituloProjetos.style.display = "block";


            // FILTRAR OS PROJETOS

            cardsProjeto.forEach(function (card) {


                const materiais =
                    normalizarTexto(card.dataset.materials);


                const correspondeTexto =
                    textoDigitado === ""
                    || materiais.includes(textoDigitado);


                const correspondeMateriais =
                    materiaisSelecionados.length === 0
                    || materiaisSelecionados.some(function (material) {

                        return materiais.includes(material);

                    });


                if (correspondeTexto && correspondeMateriais) {


                    card.style.display = "flex";


                    quantidadeVisivel++;


                } else {


                    card.style.display = "none";

                }

            });


            // VERIFICAR SE EXISTEM RESULTADOS

            if (quantidadeVisivel === 0) {


                semResultados.style.display = "block";


            } else {


                semResultados.style.display = "none";

            }

        }


        // SELECIONAR MATERIAIS

        botoesMaterial.forEach(function (botao) {


            botao.addEventListener("click", function () {


                const material =
                    normalizarTexto(botao.dataset.material);


                const indice =
                    materiaisSelecionados.indexOf(material);


                if (indice === -1) {


                    materiaisSelecionados.push(material);


                    botao.classList.add("selecionado");


                } else {


                    materiaisSelecionados.splice(indice, 1);


                    botao.classList.remove("selecionado");

                }


                atualizarProjetos();

            });

        });


        // PESQUISAR ENQUANTO DIGITA

        campoPesquisa.addEventListener("input", function () {

            atualizarProjetos();

        });


        // INICIAR A TELA VAZIA

        atualizarProjetos();


    </script>

</body>

</html>