<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Solicitação de ajuda - ReCria</title>

    <link rel="stylesheet" href="css/solicitacao-ajuda.css">
    
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


/* =========================================
   MENU LATERAL — IGUAL AO PERFIL
========================================= */

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

    transition:
        width 0.3s ease,
        left 0.3s ease;
}


/* TOPO */

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

/* FOLHAS DO MENU */

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

/* NAVEGAÇÃO */

.navegacao {
    width: 100%;

    display: flex;
    flex-direction: column;

    gap: 3px;
    padding: 0 10px;
}


/* ITENS */

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


/* MENU FECHADO */

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


/* =========================================
   CONTEÚDO PRINCIPAL
========================================= */

.conteudo-principal {
    width: calc(100% - 185px);

    min-height: 100vh;

    margin-left: 185px;

    background-color: #ffffff;

    transition:
        width 0.3s ease,
        margin-left 0.3s ease;
}

.menu-lateral.fechado + .conteudo-principal {
    width: calc(100% - 85px);

    margin-left: 85px;
}


/* =========================================
   CABEÇALHO
========================================= */

.cabecalho-pagina {
    display: flex;
    align-items: flex-start;

    gap: 30px;

    padding: 25px 34px;

    margin-bottom: 10px;
}

.botao-voltar {
    display: flex;
    align-items: center;
    justify-content: center;

    width: 60px;
    height: 60px;

    border: none;
    border-radius: 50%;

    background-color: #e0f5e1;
    color: #12334a;

    font-size: 35px;

    cursor: pointer;
}

.botao-voltar:hover {
    background-color: #ccebcf;
}

.titulo-area h1 {
    color: #10233e;

    font-size: 36px;

    margin-bottom: 4px;
}

.titulo-area p {
    color: #647e9d;

    font-size: 21px;
}


/* =========================================
   CARTÃO DE AJUDA
========================================= */

.cartao-ajuda {
    width: min(915px, calc(100% - 68px));

    margin: 0 auto;

    padding: 55px 52px;

    border: 1px solid #dce7eb;
    border-radius: 15px;

    background-color: #ffffff;

    text-align: center;
}

.logo-cartao {
    width: 225px;
    height: auto;

    margin-bottom: 32px;
}

.cartao-ajuda h2 {
    color: #12334a;

    font-size: 36px;

    margin-bottom: 20px;
}

.descricao-ajuda {
    color: #6d84a2;

    font-size: 20px;
    line-height: 1.55;

    margin-bottom: 35px;
}


/* =========================================
   FORMULÁRIO
========================================= */

#formAjuda {
    display: flex;
    flex-direction: column;

    gap: 27px;
}

#mensagemAjuda {
    width: 100%;
    height: 172px;

    padding: 22px 20px;

    border: 2px solid #d9e4ec;
    border-radius: 12px;

    background-color: #ffffff;

    color: #12334a;

    font-family: inherit;
    font-size: 17px;

    resize: vertical;
    outline: none;
}

#mensagemAjuda::placeholder {
    color: #8ba0bb;
}

#mensagemAjuda:focus {
    border-color: #4ca85b;
}


/* =========================================
   BOTÃO ENVIAR
========================================= */

.botao-enviar {
    display: flex;
    align-items: center;
    justify-content: center;

    gap: 18px;

    width: 100%;
    min-height: 60px;

    padding: 14px 24px;

    border: none;
    border-radius: 10px;

    background-color: #4ca653;
    color: #ffffff;

    font-family: inherit;
    font-size: 18px;
    font-weight: 600;

    cursor: pointer;

    transition:
        background-color 0.2s ease,
        transform 0.2s ease;
}

.botao-enviar:hover {
    background-color: #398f45;

    transform: translateY(-1px);
}


/* =========================================
   AVISO
========================================= */

.aviso-feedback {
    position: fixed;

    right: 25px;
    bottom: 25px;

    display: flex;
    align-items: center;

    gap: 12px;

    padding: 17px 22px;

    border-radius: 8px;

    background-color: #181818;
    color: #ffffff;

    font-size: 15px;

    box-shadow: 0 5px 20px rgba(0, 0, 0, 0.25);

    animation: aparecerAviso 0.3s ease;

    z-index: 2000;
}

.aviso-feedback span:first-child {
    color: #74d47e;
    font-size: 18px;
}

.aviso-feedback.sumir {
    animation: sumirAviso 0.3s ease forwards;
}

@keyframes aparecerAviso {

    from {
        opacity: 0;
        transform: translateY(20px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }

}

@keyframes sumirAviso {

    from {
        opacity: 1;
        transform: translateY(0);
    }

    to {
        opacity: 0;
        transform: translateY(20px);
    }

}


/* =========================================
   RESPONSIVIDADE
========================================= */

@media (max-width: 768px) {

    .menu-lateral {
        left: -185px;

        width: 185px;
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
        margin-left: 0;
    }

    .cabecalho-pagina {
        gap: 15px;
        padding: 20px 15px;
    }

    .botao-voltar {
        width: 48px;
        height: 48px;
        font-size: 28px;
    }

    .titulo-area h1 {
        font-size: 25px;
    }

    .titulo-area p {
        font-size: 16px;
    }

    .cartao-ajuda {
        width: calc(100% - 30px);
        padding: 35px 20px;
    }

    .logo-cartao {
        width: 180px;
    }

    .cartao-ajuda h2 {
        font-size: 27px;
    }

    .descricao-ajuda {
        font-size: 16px;
    }

    .descricao-ajuda br {
        display: none;
    }

    .botao-enviar {
        font-size: 15px;
        gap: 10px;
    }

    .aviso-feedback {
        right: 15px;
        bottom: 15px;
        left: 15px;
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
                        aria-label="Abrir ou fechar menu">

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

            <header class="cabecalho-pagina">

                <button class="botao-voltar"
                        onclick="voltarPagina()"
                        aria-label="Voltar">

                    ←

                </button>


                <div class="titulo-area">

                    <h1>Solicitação de ajuda</h1>

                    <p>Estamos aqui para te ajudar!</p>

                </div>

            </header>


            <!-- CARTÃO DE AJUDA -->

            <section class="cartao-ajuda">

                <img src="img/recria_esquerda.png"
                     alt="Logo ReCria"
                     class="logo-cartao">


                <h2>Precisando de ajuda?</h2>


                <p class="descricao-ajuda">

                    Aqui você pode enviar uma solicitação de ajuda para a nossa equipe.

                    <br>

                    Você pode nos informar sobre bugs, erros, dúvidas, sugestões

                    <br>

                    ou qualquer outro problema que esteja enfrentando.

                </p>


                <form id="formAjuda">

                    <textarea id="mensagemAjuda"
                              placeholder="Descreva sua solicitação de ajuda..."
                              required></textarea>


                    <button type="submit" class="botao-enviar">

                        <span>✈</span>

                        Enviar solicitação de ajuda

                    </button>

                </form>

            </section>

        </main>

    </div>


    <!-- JAVASCRIPT -->

    <script>

        const menuLateral =
            document.getElementById("menuLateral");

        const btnHamburguer =
            document.getElementById("btnHamburguer");

        const formAjuda =
            document.getElementById("formAjuda");

        const mensagemAjuda =
            document.getElementById("mensagemAjuda");


        // Abrir e fechar menu

        btnHamburguer.addEventListener("click", function () {

            menuLateral.classList.toggle("fechado");

        });


        // Voltar para a página anterior

        function voltarPagina() {

            if (document.referrer) {

                history.back();

            } else {

                window.location.href = "noticias.jsp";

            }

        }


        // Feedback de envio

        formAjuda.addEventListener("submit", function (event) {

            event.preventDefault();

            if (mensagemAjuda.value.trim() === "") {

                return;

            }

            mostrarAviso("Solicitação enviada com sucesso!");

            mensagemAjuda.value = "";

        });


        function mostrarAviso(texto) {

            const avisoExistente =
                document.querySelector(".aviso-feedback");

            if (avisoExistente) {

                avisoExistente.remove();

            }

            const aviso =
                document.createElement("div");

            aviso.className = "aviso-feedback";

            aviso.innerHTML = `
                <span>✓</span>
                <span>${texto}</span>
            `;

            document.body.appendChild(aviso);


            setTimeout(function () {

                aviso.classList.add("sumir");

                setTimeout(function () {

                    aviso.remove();

                }, 300);

            }, 3000);

        }

    </script>

</body>

</html>