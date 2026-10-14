<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pt-BR">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ReCria - Como reduzir o uso de plástico</title>

    <link rel="stylesheet" href="css/noticia-detalhes.css">

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


/* BOTÃO VOLTAR */

.botao-voltar {
    position: absolute;

    top: 25px;
    left: 30px;

    background: transparent;
    border: none;

    color: #10233e;

    font-size: 54px;
    font-weight: normal;

    line-height: 1;

    cursor: pointer;
}


/* BOTÃO COMPARTILHAR */

.botao-compartilhar {
    position: absolute;

    top: 25px;
    right: 30px;

    background: transparent;
    border: none;

    color: #10233e;

    font-size: 39px;

    cursor: default;
}


.botao-compartilhar span {
    display: block;
}


/* ÁREA DA NOTÍCIA */

.noticia-detalhes {
    width: 100%;
    max-width: 900px;

    margin: 0 auto;

    padding: 0 35px 40px;
}


/* IMAGEM */

.imagem-noticia {
    width: 100%;
    height: 340px;

    object-fit: cover;

    border-radius: 22px;

    display: block;

    margin-bottom: 22px;
}


/* TÍTULO */

.noticia-detalhes h1 {
    color: #10233e;

    font-size: 39px;
    line-height: 1.18;

    font-weight: 700;

    margin-bottom: 20px;
}


/* DATA */

.data-noticia {
    color: #5794c5;

    font-size: 24px;

    margin-bottom: 24px;
}


/* TEXTO */

.texto-noticia {
    color: #5794c5;

    font-size: 24px;
    line-height: 1.5;
}


.texto-noticia p {
    margin-bottom: 18px;
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


    .noticia-detalhes {
        padding: 0 12px 25px;
    }


    .imagem-noticia {
        height: 180px;
    }


    .noticia-detalhes h1 {
        font-size: 25px;
    }


    .data-noticia {
        font-size: 16px;
    }


    .texto-noticia {
        font-size: 16px;
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


                <a href="noticias.jsp"
                   class="item-menu ativo">

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


                <a href="perfil.jsp" class="item-menu">

                    <span class="icone">&#x1F464</span>

                    <span class="texto-menu">
                        Perfil
                    </span>

                </a>

            </nav>


            <div class="folhas-menu">
                🌿
            </div>

        </aside>


        <!-- CONTEÚDO PRINCIPAL -->

        <main class="conteudo-principal">


            <!-- CABEÇALHO -->

            <header class="cabecalho">


                <!-- BOTÃO VOLTAR -->

                <button class="botao-voltar"
                        id="btnVoltar"
                        aria-label="Voltar">

                    ←

                </button>


                <!-- LOGO -->

                <div class="marca">

                    <img src="img/recria_esquerda.png"
                         alt="Logo do ReCria">

                </div>


                <!-- BOTÃO COMPARTILHAR -->

                <button class="botao-compartilhar"
                        type="button"
                        aria-label="Compartilhar">

                    <span>♧</span>

                </button>

            </header>


            <!-- CONTEÚDO DA NOTÍCIA -->

            <article class="noticia-detalhes">


                <img class="imagem-noticia"
                     src="img/reduzir_plastico.png"
                     alt="Como reduzir o uso de plástico">


                <h1>
                    Como reduzir o uso de plástico
                    no dia a dia
                </h1>


                <p class="data-noticia">
                    15 de maio de 2025
                </p>


                <div class="texto-noticia">

                    <p>
                        O plástico está presente em diversos
                        produtos utilizados no nosso dia a dia.
                        Apesar de sua praticidade, o descarte
                        incorreto pode causar impactos
                        negativos ao meio ambiente.
                    </p>


                    <p>
                        Uma das maneiras de reduzir o uso
                        de plástico é evitar produtos
                        descartáveis e optar por alternativas
                        reutilizáveis, como garrafas,
                        sacolas e recipientes.
                    </p>


                    <p>
                        Também é importante reutilizar
                        embalagens sempre que possível
                        e separar corretamente os materiais
                        plásticos para a reciclagem.
                    </p>


                    <p>
                        Pequenas mudanças nos hábitos
                        diários podem ajudar a diminuir
                        a quantidade de resíduos produzidos
                        e contribuir para a preservação
                        do meio ambiente.
                    </p>

                </div>

            </article>

        </main>

    </div>


    <!-- JAVASCRIPT -->

    <script>

        const menuLateral =
            document.getElementById("menuLateral");


        const btnHamburguer =
            document.getElementById("btnHamburguer");


        const btnVoltar =
            document.getElementById("btnVoltar");

// Abrir e fechar menu lateral

btnHamburguer.addEventListener("click", function () {

    if (window.innerWidth <= 768) {
        menuLateral.classList.toggle("aberto");
    } else {
        menuLateral.classList.toggle("fechado");
    }

});

        // Voltar para a tela anterior

        btnVoltar.addEventListener("click", function () {

            history.back();

        });

    </script>


</body>

</html>