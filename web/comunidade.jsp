 <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
 
<!DOCTYPE html> 
<html lang="pt-BR"> 
 
<head> 
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
 
    <title>ReCria - Comunidade</title> 
 
    <link rel="stylesheet" href="css/comunidade.css"> 
     
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
 
/* BOTÃO FIXO — PUBLICAR PROJETO */

.botao-publicar-projeto {
    position: fixed;
    right: 24px;
    bottom: 22px;
    z-index: 200;

    display: flex;
    align-items: center;
    justify-content: center;
    gap: 7px;

    padding: 10px 15px;

    background-color: #078c43;
    color: #ffffff;

    border: none;
    border-radius: 25px;

    font-family: Arial, Helvetica, sans-serif;
    font-size: 14px;
    font-weight: bold;

    white-space: nowrap;
    cursor: default;

    box-shadow: 0 3px 10px rgba(0, 0, 0, 0.18);
}

/* SINAL DE MAIS */

.botao-publicar-projeto .icone-mais {
    font-size: 21px;
    line-height: 1;
}

/* AJUSTE PARA CELULARES */

@media (max-width: 400px) {
    .botao-publicar-projeto {
        right: 12px;
        bottom: 14px;
        padding: 9px 12px;
        font-size: 13px;
    }

    .botao-publicar-projeto .icone-mais {
        font-size: 19px;
    }
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
 
.conteudo-principal {
    flex: 1;

    min-width: 0;
    min-height: 100vh;

    margin-left: 185px;

    background-color: #ffffff;
    position: relative;

    transition: margin-left 0.3s ease;
}
 
.menu-lateral.fechado + .conteudo-principal {
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
 
/* ÁREA DA COMUNIDADE */ 
 
.area-comunidade { 
    width: 100%; 
    max-width: 1000px; 
    margin: 0 auto; 
    padding: 0 35px 35px; 
} 
 
 
.area-comunidade h1 { 
    font-size: 30px; 
    margin-bottom: 16px; 
} 
 
 
.lista-projetos { 
    display: grid; 
    grid-template-columns: repeat(2, minmax(0, 1fr)); 
    gap: 16px; 
} 
 
 
/* CARDS */ 
 
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
    height: 125px; 
    object-fit: cover; 
    border-radius: 12px; 
    margin-bottom: 8px; 
} 
 
 
.informacoes-projeto { 
    flex: 1; 
} 
 
 
.autor { 
    color: #5d776b; 
    font-size: 12px; 
    margin-bottom: 5px; 
} 
 
 
.card-projeto h2 { 
    font-size: 16px; 
    line-height: 1.25; 
    margin-bottom: 5px; 
} 
 
 
.data { 
    color: #7190a5; 
    font-size: 11px; 
    margin-bottom: 8px; 
} 
 
 
/* BOTÃO DE DETALHES */ 
 
.botao-detalhes { 
    width: 100%; 
    padding: 7px; 
    border: none; 
    border-radius: 20px; 
    background-color: #078c43; 
    color: #ffffff; 
    font-size: 16px; 
    font-weight: bold; 
    cursor: pointer; 
    transition: background-color 0.2s ease; 
} 
 
 
.botao-detalhes:hover { 
    background-color: #056c34; 
} 
 
 
/* MATERIAIS OCULTOS */ 
 
.materiais-projeto { 
    max-height: 0; 
    overflow: hidden; 
    opacity: 0; 
    padding: 0 10px; 
    transition: max-height 0.35s ease, 
                opacity 0.3s ease, 
                padding 0.35s ease; 
} 
 
 
.card-projeto.materiais-abertos .materiais-projeto { 
    max-height: 160px; 
    opacity: 1; 
    padding: 10px; 
} 
 
 
.materiais-projeto strong { 
    font-size: 13px; 
} 
 
 
.materiais-projeto ul { 
    padding-left: 20px; 
    margin-top: 5px; 
} 
 
 
.materiais-projeto li { 
    font-size: 12px; 
    margin-bottom: 3px; 
} 
 
 
/* BOTÕES VER MAIS */ 
 
.botao-ver-mais { 
    display: block; 
    margin: 18px auto 25px; 
    padding: 10px 25px; 
    border: 2px solid #078c43; 
    border-radius: 22px; 
    background-color: #ffffff; 
    color: #078c43; 
    font-size: 14px; 
    font-weight: bold; 
    cursor: default; 
} 
 
 
/* OUTROS PROJETOS */ 
 
.titulo-outros { 
    margin-top: 8px; 
} 
 
 @media (max-width: 768px) {

     .conteudo-principal {
    margin-left: 0;
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
 
    .area-comunidade { 
        padding: 0 12px 20px; 
    } 
 
 
    .area-comunidade h1 { 
        font-size: 22px; 
    } 
 
 
    .lista-projetos { 
        gap: 8px; 
    } 
 
 
    .card-projeto img { 
        height: 85px; 
    } 
 
 
    .card-projeto h2 { 
        font-size: 12px; 
    } 
 
 
    .botao-ver-mais { 
        font-size: 12px; 
        padding: 8px 18px; 
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
                    <span class="texto-menu">Pesquisa</span> 
                </a> 
 
                <div class="item-menu ativo" aria-current="page"> 
                    <span class="icone">&#x1F465</span> 
                    <span class="texto-menu">Comunidade</span> 
                </div> 
 
                <a href="noticias.jsp" class="item-menu"> 
                    <span class="icone">&#x1F4F0</span> 
                    <span class="texto-menu">Notícias</span> 
                </a> 
 
                <a href="chatia.jsp" class="item-menu"> 
                    <span class="icone">&#128172</span> 
                    <span class="texto-menu">Chat com IA</span> 
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
 
                <button class="botao-menu-mobile" 
                        id="btnMenuMobile" 
                        aria-label="Abrir menu"> 
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
 
 
            <!-- ÁREA DA COMUNIDADE --> 
            <section class="area-comunidade"> 
 
                <h1>Projetos em Destaque</h1> 
 
                <div class="lista-projetos"> 
 
                    <!-- DESTAQUE 1 --> 
                    <article class="card-projeto"> 
 
                        <img src="img/casinha_passarinho.png" 
                             alt="Casinha de pássaros"> 
 
                        <div class="informacoes-projeto"> 
                            <p class="autor">👤 Ana Souza</p> 
 
                            <h2>Casinha de pássaros com papelão</h2> 
 
                            <p class="data">Publicado em 15/09/2026</p> 
                        </div> 
 
                        <button class="botao-detalhes" 
                                type="button" 
                                aria-expanded="false"> 
                            ↓ 
                        </button> 
 
                        <div class="materiais-projeto"> 
                            <strong>Materiais utilizados:</strong> 
 
                            <ul> 
                                <li>Papelão</li> 
                                <li>Cola</li> 
                                <li>Tinta</li> 
                            </ul> 
                        </div> 
 
                    </article> 
 
 
                    <!-- DESTAQUE 2 --> 
                    <article class="card-projeto"> 
 
                        <img src="img/vaso_garrafa.png" 
                             alt="Vaso feito com garrafa PET"> 
 
                        <div class="informacoes-projeto"> 
                            <p class="autor">👤 Lucas Silva</p> 
 
                            <h2>Vaso decorativo com garrafa PET</h2> 
 
                            <p class="data">Publicado em 14/09/2026</p> 
                        </div> 
 
                        <button class="botao-detalhes" 
                                type="button" 
                                aria-expanded="false"> 
                            ↓ 
                        </button> 
 
                        <div class="materiais-projeto"> 
                            <strong>Materiais utilizados:</strong> 
 
                            <ul> 
                                <li>Garrafa PET</li> 
                                <li>Tinta</li> 
                                <li>Terra</li> 
                            </ul> 
                        </div> 
 
                    </article> 
 
                </div> 
 
 
                <button class="botao-ver-mais" type="button"> 
                    Ver mais projetos 
                </button> 
 
 
                <!-- OUTROS PROJETOS --> 
                <h1 class="titulo-outros">Outros Projetos</h1> 
 
                <div class="lista-projetos"> 
             
<!-- OUTRO PROJETO 1 -->
<article class="card-projeto">

    <img src="img/abajur.png"
         alt="Abajur feito com lata reutilizada">

    <div class="informacoes-projeto">
        <p class="autor">👤 Matheus Oliveira</p>

        <h2>Abajur com lata</h2>

        <p class="data">Publicado em 13/09/2026</p>
    </div>

    <button class="botao-detalhes"
            type="button"
            aria-expanded="false">
        ↓
    </button>

    <div class="materiais-projeto">
        <strong>Materiais utilizados:</strong>

        <ul>
            <li>Lata reutilizada</li>
            <li>Lâmpada e soquete apropriados</li>
            <li>Materiais de acabamento</li>
        </ul>
    </div>

</article>

                    <!-- OUTRO PROJETO 2 --> 
                    <article class="card-projeto"> 
 
                        <img src="img/organizador.png" 
                             alt="Organizador de papelão"> 
 
                        <div class="informacoes-projeto"> 
                            <p class="autor">👤 Maria Oliveira</p> 
 
                            <h2>Organizador feito com papelão</h2> 
 
                            <p class="data">Publicado em 12/09/2026</p> 
                        </div> 
 
                        <button class="botao-detalhes" 
                                type="button" 
                                aria-expanded="false"> 
                            ↓ 
                        </button> 
 
                        <div class="materiais-projeto"> 
                            <strong>Materiais utilizados:</strong> 
 
                            <ul> 
                                <li>Papelão</li> 
                                <li>Tecido</li> 
                                <li>Cola quente</li> 
                            </ul> 
                        </div> 
 
                    </article> 
 
                </div> 
 
 
                <button class="botao-ver-mais" type="button"> 
                    Ver outros projetos 
                </button> 
 
            </section> 
 
        </main> 
 
    </div> 
 
        <!-- BOTÃO DECORATIVO PUBLICAR PROJETO -->

    <button
        type="button"
        class="botao-publicar-projeto"
        aria-label="Publicar projeto">

        <span class="icone-mais" aria-hidden="true">+</span>
        <span>Publicar projeto</span>

    </button>
 
    <!-- JAVASCRIPT --> 
    <script> 
 
        const menuLateral = 
            document.getElementById("menuLateral"); 
 
        const btnHamburguer = 
            document.getElementById("btnHamburguer"); 
 
        const btnMenuMobile = 
            document.getElementById("btnMenuMobile"); 
 
 
        btnHamburguer.addEventListener("click", function () { 
            menuLateral.classList.toggle("fechado"); 
        }); 
 
 
        btnMenuMobile.addEventListener("click", function (event) { 
 
            event.stopPropagation(); 
 
            menuLateral.classList.toggle("aberto"); 
 
        }); 
 
 
        const btnTresPontos = 
            document.getElementById("btnTresPontos"); 
 
        const menuOpcoes = 
            document.getElementById("menuOpcoes");
    
    const opcaoModerador =
    document.getElementById("opcaoModerador");
    opcaoModerador.addEventListener("click", function () {
    sessionStorage.setItem("paginaOrigemModerador", "comunidade.jsp");
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
 
        btnTresPontos.addEventListener("click", function (event) { 
 
            event.stopPropagation(); 
 
            menuOpcoes.classList.toggle("mostrar"); 
 
        }); 
 
 
        menuOpcoes.addEventListener("click", function (event) { 
            event.stopPropagation(); 
        }); 
 
 
        document.addEventListener("click", function () { 
            menuOpcoes.classList.remove("mostrar"); 
        }); 
 
 
        const botoesDetalhes = 
            document.querySelectorAll(".botao-detalhes"); 
 
 
        botoesDetalhes.forEach(function (botao) { 
 
            botao.addEventListener("click", function () { 
 
                const card = 
                    botao.closest(".card-projeto"); 
 
                const aberto = 
                    card.classList.contains("materiais-abertos"); 
 
 
                card.classList.toggle("materiais-abertos"); 
 
                botao.setAttribute( 
                    "aria-expanded", 
                    String(!aberto) 
                ); 
 
                botao.textContent = 
                    aberto ? "↓" : "↑"; 
 
            }); 
 
        }); 
 
    </script> 
 
</body> 
 
</html>