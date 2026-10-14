<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    String nome = (String) session.getAttribute("nome");
    String email = (String) session.getAttribute("email");
    String local = (String) session.getAttribute("local");
    String telefone = (String) session.getAttribute("telefone");

    if (nome == null) {
        nome = "Ana Costa";
    }

    if (email == null) {
        email = "ana.costa@email.com";
    }

    if (local == null) {
        local = "Paraná";
    }

    if (telefone == null) {
        telefone = "";
    }
%>

<!DOCTYPE html>
<html lang="pt-BR">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Alterar perfil - ReCria</title>

    <link rel="stylesheet" href="css/alterar-perfil.css">

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
   MENU LATERAL
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

    gap: 25px;

    padding: 28px 42px;

    margin-bottom: 5px;
}


.botao-voltar {
    display: flex;
    align-items: center;
    justify-content: center;

    width: 55px;
    height: 55px;

    border: none;
    border-radius: 50%;

    background-color: #e0f5e1;
    color: #12334a;

    font-size: 35px;

    cursor: pointer;

    flex-shrink: 0;
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

    font-size: 20px;
}


/* =========================================
   CARTÃO DO PERFIL
========================================= */

.cartao-perfil {
    width: min(950px, calc(100% - 70px));

    margin: 0 auto 40px;

    padding: 35px 42px;

    display: grid;
    grid-template-columns: 190px 1fr;

    column-gap: 40px;

    border: 1px solid #dce7eb;
    border-radius: 15px;

    background-color: #ffffff;

    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.03);
}


/* =========================================
   FOTO
========================================= */

.area-foto {
    display: flex;
    flex-direction: column;

    align-items: center;

    padding-top: 5px;
}


.foto-perfil {
    width: 155px;
    height: 155px;

    border-radius: 50%;

    background-color: #e6f8df;
    border: 2px solid #c4e9bb;

    display: flex;
    align-items: center;
    justify-content: center;
}


.icone-usuario {
    color: #159447;

    font-size: 100px;
    line-height: 1;
}


.botao-alterar-foto {
    width: 155px;

    margin-top: 20px;

    padding: 12px 8px;

    border: none;
    border-radius: 10px;

    background-color: #4ca653;
    color: #ffffff;

    font-size: 14px;
    font-weight: bold;

    cursor: not-allowed;

    opacity: 0.85;
}


.texto-foto {
    color: #8ba0bb;

    font-size: 12px;

    margin-top: 8px;
}


/* =========================================
   CAMPOS
========================================= */

#formPerfil {
    display: flex;
    flex-direction: column;

    gap: 19px;
}

.campo {
    width: 100%;
}


.campo label {
    display: block;

    color: #12334a;

    font-size: 15px;
    font-weight: bold;

    margin-bottom: 8px;
}


.campo-input {
    width: 100%;
    height: 48px;

    display: flex;
    align-items: center;

    gap: 12px;

    padding: 0 14px;

    border: 2px solid #d9e4ec;
    border-radius: 10px;

    background-color: #ffffff;

    transition: border-color 0.2s ease;
}


.campo-input:focus-within {
    border-color: #4ca85b;
}


.campo-input > span {
    color: #6f87a3;

    font-size: 20px;

    flex-shrink: 0;
}


.campo-input input,
.campo-input select {
    width: 100%;
    height: 100%;

    border: none;
    outline: none;

    background-color: transparent;

    color: #536b86;

    font-family: inherit;
    font-size: 14px;
}


.campo-input select {
    cursor: pointer;
}


.campo-input input::placeholder {
    color: #9aabc0;
}

/* BOTÃO DO OLHO DA SENHA */

.botao-olho {
    width: 34px;
    height: 34px;

    display: flex;
    align-items: center;
    justify-content: center;

    border: none;
    background: transparent;

    cursor: pointer;
    padding: 3px;

    flex-shrink: 0;
}

/* ÍCONE DO OLHO */

.icone-olho {
    width: 25px;
    height: 25px;

    fill: none;
    stroke: #159447;
    stroke-width: 2;
    stroke-linecap: round;
    stroke-linejoin: round;
}

/* RISCO DO OLHO FECHADO */

.icone-olho .risco {
    display: block;
}

/* ESCONDE O RISCO QUANDO A SENHA ESTÁ VISÍVEL */

.botao-olho.senha-visivel .risco {
    display: none;
}

/* REMOVE O OLHO AUTOMÁTICO DO NAVEGADOR */

input[type="password"]::-ms-reveal,
input[type="password"]::-ms-clear {
    display: none;
}

/* =========================================
   BOTÃO SALVAR
========================================= */

.botao-salvar {
    width: 75%;
    min-height: 52px;

    align-self: center;

    margin-top: 8px;

    display: flex;
    align-items: center;
    justify-content: center;

    gap: 12px;

    border: none;
    border-radius: 10px;

    background-color: #4ca653;
    color: #ffffff;

    font-family: inherit;
    font-size: 16px;
    font-weight: bold;

    cursor: pointer;

    transition:
        background-color 0.2s ease,
        transform 0.2s ease;
}


.botao-salvar:hover {
    background-color: #398f45;

    transform: translateY(-1px);
}


/* =========================================
   BOTÃO EXCLUIR
========================================= */

.botao-excluir {
    width: 75%;
    min-height: 52px;

    align-self: center;

    display: flex;
    align-items: center;
    justify-content: center;

    gap: 12px;

    border: 2px solid #e99a9a;
    border-radius: 10px;

    background-color: #ffffff;
    color: #d94c4c;

    font-family: inherit;
    font-size: 16px;
    font-weight: bold;

    cursor: pointer;

    transition:
        background-color 0.2s ease,
        color 0.2s ease;
}


.botao-excluir:hover {
    background-color: #fff0f0;
}


/* =========================================
   MODAL
========================================= */

.fundo-modal {
    position: fixed;

    inset: 0;

    display: none;
    align-items: center;
    justify-content: center;

    padding: 20px;

    background-color: rgba(0, 0, 0, 0.55);

    z-index: 2000;
}


.fundo-modal.mostrar {
    display: flex;
}


.modal {
    width: min(400px, 100%);

    padding: 30px 28px;

    border-radius: 15px;

    background-color: #181818;
    color: #ffffff;

    text-align: center;

    box-shadow: 0 5px 30px rgba(0, 0, 0, 0.4);
}


.modal h2 {
    font-size: 23px;

    margin-bottom: 15px;
}


.modal p {
    color: #d2d2d2;

    font-size: 16px;
    line-height: 1.5;

    margin-bottom: 25px;
}


.botoes-modal {
    display: flex;

    justify-content: center;

    gap: 15px;
}


.botoes-modal button {
    width: 120px;

    padding: 12px;

    border: none;
    border-radius: 8px;

    font-size: 15px;
    font-weight: bold;

    cursor: pointer;
}


.botao-nao {
    background-color: #ffffff;
    color: #222222;
}


.botao-sim {
    background-color: #4ca653;
    color: #ffffff;
}


.botao-sim:hover {
    background-color: #398f45;
}


/* =========================================
   RESPONSIVIDADE
========================================= */

@media (max-width: 900px) {

    .cartao-perfil {
        grid-template-columns: 1fr;

        row-gap: 30px;

        padding: 30px;
    }


    .area-foto {
        padding-top: 0;
    }

}


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


    .folhas-menu {
        font-size: 120px;
    }


    .conteudo-principal,
    .menu-lateral.fechado + .conteudo-principal {
        width: 100%;

        margin-left: 0;
    }


    .cabecalho-pagina {
        gap: 15px;

        padding: 22px 18px;
    }


    .botao-voltar {
        width: 45px;
        height: 45px;

        font-size: 28px;
    }


    .titulo-area h1 {
        font-size: 26px;
    }


    .titulo-area p {
        font-size: 16px;
    }


    .cartao-perfil {
        width: calc(100% - 30px);

        padding: 25px 20px;
    }


    .botao-salvar,
    .botao-excluir {
        width: 100%;
    }

}


@media (max-width: 400px) {

    .titulo-area h1 {
        font-size: 22px;
    }


    .titulo-area p {
        font-size: 14px;
    }


    .cartao-perfil {
        padding: 22px 15px;
    }


    .foto-perfil {
        width: 135px;
        height: 135px;
    }


    .icone-usuario {
        font-size: 85px;
    }


    .campo-input {
        height: 46px;
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


            <!-- FOLHA DO MENU -->

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

                    <h1>Alterar perfil</h1>

                    <p>Atualize suas informações pessoais.</p>

                </div>

            </header>


            <!-- CARTÃO PRINCIPAL -->

            <section class="cartao-perfil">


                <!-- FOTO FIXA -->

                <div class="area-foto">

                    <div class="foto-perfil">

                        <span class="icone-usuario">
                            &#x1F9B2
                        </span>

                    </div>


                    <button class="botao-alterar-foto"
                            type="button"
                            disabled>

                        Alterar foto

                    </button>

                </div>


                <!-- FORMULÁRIO -->

                <form id="formPerfil">


                    <!-- NOME -->

                    <div class="campo">

                        <label for="nomeUsuario">
                            Alterar nome
                        </label>

                        <div class="campo-input">

                            <span>&#x1F464</span>

                            <input type="text"
                                   id="nomeUsuario"
                                   placeholder="Digite seu novo nome"
                                   required>

                        </div>

                    </div>

                    <!-- E-mail -->

                     <div class="campo">

                        <label for="emailUsuario">
                            Novo E-mail
                        </label>

                        <div class="campo-input">

                            <span>&#x1F4E7;</span>

                            <input type="email"
                                   id="emailUsuario"
                                   placeholder="Digite seu novo email"
                                   required>

                        </div>

                    </div>
                   
                    <!-- ESTADO -->

                    <div class="campo">

                        <label for="estadoUsuario">
                            Alterar Estado
                        </label>

                        <div class="campo-input">

                            <span>&#x1F30D</span>

                            <select id="estadoUsuario"
                                    required>
                   
                                <option value="" selected disabled>Selecione seu estado</option>
                                <option value="Acre">Acre</option>
                                <option value="Alagoas">Alagoas</option>
                                <option value="Amapá">Amapá</option>
                                <option value="Amazonas">Amazonas</option>
                                <option value="Bahia">Bahia</option>
                                <option value="Ceará">Ceará</option>
                                <option value="Distrito Federal">
                                    Distrito Federal
                                </option>
                                <option value="Espírito Santo">
                                    Espírito Santo
                                </option>
                                <option value="Goiás">Goiás</option>
                                <option value="Maranhão">Maranhão</option>
                                <option value="Mato Grosso">
                                    Mato Grosso
                                </option>
                                <option value="Mato Grosso do Sul">
                                    Mato Grosso do Sul
                                </option>
                                <option value="Minas Gerais">
                                    Minas Gerais
                                </option>
                                <option value="Pará">Pará</option>
                                <option value="Paraíba">Paraíba</option>
                                <option value="Paraná">Paraná</option>
                                <option value="Pernambuco">
                                    Pernambuco
                                </option>
                                <option value="Piauí">Piauí</option>
                                <option value="Rio de Janeiro">
                                    Rio de Janeiro
                                </option>
                                <option value="Rio Grande do Norte">
                                    Rio Grande do Norte
                                </option>
                                <option value="Rio Grande do Sul">
                                    Rio Grande do Sul
                                </option>
                                <option value="Rondônia">Rondônia</option>
                                <option value="Roraima">Roraima</option>
                                <option value="Santa Catarina">
                                    Santa Catarina
                                </option>
                                <option value="São Paulo">
                                    São Paulo
                                </option>
                                <option value="Sergipe">Sergipe</option>
                                <option value="Tocantins">
                                    Tocantins
                                </option>

                            </select>

                        </div>

                    </div>


                    <!-- TELEFONE -->

                    <div class="campo">

                        <label for="telefoneUsuario">
                            Novo Telefone (opcional)
                        </label>

                        <div class="campo-input">

                            <span>&#x1F4DE</span>

                            <input type="tel"
                                   id="telefoneUsuario"
                                   value="<%= telefone %>"
                                   placeholder="Digite seu novo telefone">

                        </div>

                    </div>


                    <!-- NOVA SENHA -->

                    <div class="campo">

                        <label for="novaSenha">
                            Nova senha
                        </label>

                        <div class="campo-input">

                            <span>&#x1F512</span>

                            <input type="password"
                                   id="novaSenha"
                                   placeholder="Digite a nova senha">

                           <button type="button"
        class="botao-olho"
        onclick="mostrarSenha('novaSenha', this)"
        aria-label="Mostrar senha">

    <svg class="icone-olho" viewBox="0 0 24 24">

        <path d="M2 12s4-7 10-7 10 7 10 7-4 7-10 7S2 12 2 12Z"></path>

        <circle cx="12" cy="12" r="3"></circle>

        <path class="risco" d="M3 3L21 21"></path>

    </svg>

</button>

                        </div>

                    </div>


                    <!-- CONFIRMAR SENHA -->

                    <div class="campo">

                        <label for="confirmarSenha">
                            Confirmar nova senha
                        </label>

                        <div class="campo-input">

                            <span>&#x1F512</span>

                            <input type="password"
                                   id="confirmarSenha"
                                   placeholder="Confirme a nova senha">

                            <button type="button"
        class="botao-olho"
        onclick="mostrarSenha('confirmarSenha', this)"
        aria-label="Mostrar senha">

    <svg class="icone-olho" viewBox="0 0 24 24">

        <path d="M2 12s4-7 10-7 10 7 10 7-4 7-10 7S2 12 2 12Z"></path>

        <circle cx="12" cy="12" r="3"></circle>

        <path class="risco" d="M3 3L21 21"></path>

    </svg>

</button>

                        </div>

                    </div>


                    <!-- BOTÃO SALVAR -->

                    <button type="submit"
                            class="botao-salvar">

                        &#x1F4BE

                        <span>
                            Salvar alterações
                        </span>

                    </button>


                    <!-- BOTÃO EXCLUIR -->

                    <button type="button"
                            class="botao-excluir"
                            id="btnExcluir">

                        &#x1F5D1

                        <span>
                            Excluir conta
                        </span>

                    </button>

                </form>

            </section>

        </main>

    </div>


    <!-- MODAL DE CONFIRMAÇÃO -->

    <div class="fundo-modal"
         id="modalConfirmacao">

        <div class="modal">

            <h2 id="tituloModal">
                Confirmar alterações
            </h2>

            <p id="textoModal">
                Deseja confirmar as alterações?
            </p>

            <div class="botoes-modal">

                <button type="button"
                        class="botao-nao"
                        id="btnNao">

                    Não

                </button>

                <button type="button"
                        class="botao-sim"
                        id="btnSim">

                    Sim

                </button>

            </div>

        </div>

    </div>


    <!-- JAVASCRIPT -->

    <script>

        const menuLateral =
            document.getElementById("menuLateral");

        const btnHamburguer =
            document.getElementById("btnHamburguer");

        const formPerfil =
            document.getElementById("formPerfil");

        const btnExcluir =
            document.getElementById("btnExcluir");

        const modalConfirmacao =
            document.getElementById("modalConfirmacao");

        const tituloModal =
            document.getElementById("tituloModal");

        const textoModal =
            document.getElementById("textoModal");

        const btnNao =
            document.getElementById("btnNao");

        const btnSim =
            document.getElementById("btnSim");


        let tipoConfirmacao = "";


        // MENU LATERAL

        btnHamburguer.addEventListener("click", function () {

            menuLateral.classList.toggle("fechado");

        });


        // VOLTAR

        function voltarPagina() {

            if (document.referrer) {

                history.back();

            } else {

                window.location.href = "perfil.jsp";

            }

        }

// Deixa o estado sem seleção ao abrir a tela
const selectEstado = document.getElementById("estadoUsuario");
selectEstado.value = "";

function mostrarSenha(id, botao) {

    const campo = document.getElementById(id);

    if (campo.type === "password") {

        campo.type = "text";

        botao.classList.add("senha-visivel");

        botao.setAttribute("aria-label", "Esconder senha");

    } else {

        campo.type = "password";

        botao.classList.remove("senha-visivel");

        botao.setAttribute("aria-label", "Mostrar senha");

    }

}

        // ABRIR CONFIRMAÇÃO DE ALTERAÇÕES

        formPerfil.addEventListener("submit", function (evento) {

            evento.preventDefault();

            const novaSenha =
                document.getElementById("novaSenha").value;

            const confirmarSenha =
                document.getElementById("confirmarSenha").value;


            if (novaSenha !== confirmarSenha) {

                alert("As senhas não são iguais.");

                return;

            }


            if (novaSenha.length > 0 && novaSenha.length < 8) {

                alert("A senha deve ter pelo menos 8 caracteres.");

                return;

            }


            tipoConfirmacao = "alterar";

            tituloModal.textContent =
                "Confirmar alterações";

            textoModal.textContent =
                "Deseja confirmar as alterações do seu perfil?";

            modalConfirmacao.classList.add("mostrar");

        });


        // ABRIR CONFIRMAÇÃO DE EXCLUSÃO

        btnExcluir.addEventListener("click", function () {

            tipoConfirmacao = "excluir";

            tituloModal.textContent =
                "Excluir conta";

            textoModal.textContent =
                "Deseja excluir esta conta?";

            modalConfirmacao.classList.add("mostrar");

        });


        // BOTÃO NÃO

        btnNao.addEventListener("click", function () {

            modalConfirmacao.classList.remove("mostrar");

            tipoConfirmacao = "";

        });


        // BOTÃO SIM

        btnSim.addEventListener("click", function () {

            if (tipoConfirmacao === "alterar") {

                salvarAlteracoes();

            }

            if (tipoConfirmacao === "excluir") {

                excluirConta();

            }

        });


        // SALVAR ALTERAÇÕES VISUALMENTE

        function salvarAlteracoes() {

            const nome =
                document.getElementById("nomeUsuario").value.trim();

const email = document.getElementById("emailUsuario").value.trim();

if (email === "") {
    alert("Digite seu e-mail.");
    return;
}

localStorage.setItem("emailUsuario", email);

            const estado =
                document.getElementById("estadoUsuario").value;

            const telefone =
                document.getElementById("telefoneUsuario").value.trim();


            if (nome === "") {

                alert("Digite seu nome.");

                return;

            }


            localStorage.setItem("nomeUsuario", nome);

            localStorage.setItem("estadoUsuario", estado);

            localStorage.setItem("telefoneUsuario", telefone);


            modalConfirmacao.classList.remove("mostrar");


            alert("Alterações salvas com sucesso!");


            tipoConfirmacao = "";

        }


        // EXCLUIR CONTA VISUALMENTE

        function excluirConta() {

            localStorage.removeItem("nomeUsuario");

            localStorage.removeItem("estadoUsuario");

            localStorage.removeItem("telefoneUsuario");


            modalConfirmacao.classList.remove("mostrar");


            window.location.href = "index.jsp";

        }

    </script>

</body>

</html>