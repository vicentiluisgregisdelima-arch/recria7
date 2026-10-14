<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ReCria - Cadastro</title>

    <link rel="stylesheet" href="css/cadastro.css">

    <style>
    
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {
    --verde-principal: #075c2b;
    --verde-botao: #4a8d2b;
    --verde-escuro: #064d25;
    --verde-fundo: #eaf5e6;
    --borda: #c5d7be;
    --texto: #496451;
}

body {
    min-height: 100vh;

    font-family: Arial, Helvetica, sans-serif;

    background: var(--verde-fundo);

    color: var(--verde-principal);
}

/* Remove o olho automático do Edge */
input[type="password"]::-ms-reveal {
    display: none;
}

.tela-cadastro {
    position: relative;

    min-height: 100vh;
    width: 100%;

    overflow: hidden;

    display: flex;
    justify-content: center;
    align-items: center;

    background:
        radial-gradient(
            circle at 8% 20%,
            rgba(188, 222, 174, 0.25),
            transparent 20%
        ),
        radial-gradient(
            circle at 92% 75%,
            rgba(188, 222, 174, 0.28),
            transparent 22%
        ),
        linear-gradient(
            135deg,
            #f2faed,
            #e5f1df
        );
}


/* Botão voltar */

.botao-voltar {
    position: absolute;

    top: 25px;
    left: 25px;

    z-index: 20;

    width: 42px;
    height: 42px;

    display: flex;
    align-items: center;
    justify-content: center;

    border-radius: 50%;

    background: var(--verde-principal);

    color: white;

    font-size: 28px;

    text-decoration: none;

    transition: background-color 0.2s ease,
                transform 0.2s ease;
}

.botao-voltar:hover {
    background: var(--verde-escuro);

    transform: scale(1.05);
}


/* Conteúdo */

.conteudo-cadastro {
    position: relative;

    z-index: 2;

    width: min(90%, 430px);

    text-align: center;

    display: flex;
    flex-direction: column;
    align-items: center;

    padding: 25px 0;
}


/* Logo */

.area-logo {
    width: 280px;
    height: 160px;

    display: flex;
    align-items: center;
    justify-content: center;

    margin-bottom: 8px;
}

.logo {
    display: block;

    max-width: 100%;
    max-height: 100%;

    object-fit: contain;
}


/* Título */

h1 {
    font-size: 29px;

    color: var(--verde-principal);

    margin-bottom: 12px;
}

.descricao {
    color: var(--texto);

    font-size: 16px;

    line-height: 1.5;

    margin-bottom: 24px;
}


/* Formulário */

.form-cadastro {
    width: min(100%, 400px);

    display: flex;
    flex-direction: column;

    gap: 10px;
}


/* Campos */

.campo {
    position: relative;

    width: 100%;

    height: 54px;

    display: flex;
    align-items: center;

    background: rgba(255, 255, 255, 0.35);

    border: 2px solid var(--borda);

    border-radius: 15px;

    padding: 0 16px;

    transition: border-color 0.2s ease;
}

.campo:focus-within {
    border-color: var(--verde-botao);
}

.icone {
    color: var(--verde-principal);

    font-size: 24px;

    margin-right: 13px;
}

.campo input,
.campo select {
    width: 100%;

    height: 100%;

    border: none;

    outline: none;

    background: transparent;

    color: var(--texto);

    font-size: 16px;

    font-family: inherit;
}

.campo input::placeholder {
    color: #708276;
}


/* Campo País / Estado */

.campo-localizacao {
    position: relative;
}

.selecao-local {
    width: 100%;
}

.botao-localizacao {
    width: 100%;
    height: 100%;

    display: flex;
    align-items: center;
    justify-content: space-between;

    border: none;
    outline: none;
    background: transparent;

    color: var(--texto);

    font-size: 16px;
    font-family: inherit;

    cursor: pointer;

    text-align: left;
}

.seta-select {
    color: var(--verde-principal);

    font-size: 20px;

    pointer-events: none;
}

.menu-localizacao {
    display: none;

    position: absolute;

    top: 60px;
    left: 0;

    width: 100%;

    padding: 15px;

    background: #f2faed;

    border: 2px solid var(--borda);

    border-radius: 15px;

    z-index: 30;

    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
}

.menu-localizacao.aberto {
    display: block;
}

.menu-localizacao label {
    display: block;

    color: var(--verde-principal);

    font-size: 13px;
    font-weight: bold;

    margin-bottom: 5px;

    text-align: left;
}

.menu-localizacao select {
    width: 100%;

    height: 42px;

    margin-bottom: 12px;

    padding: 0 10px;

    border: 1px solid var(--borda);

    border-radius: 10px;

    background: #ffffff;

    color: var(--texto);

    font-size: 14px;

    outline: none;
}

.menu-localizacao select:disabled {
    opacity: 0.5;

    cursor: not-allowed;
}

.menu-localizacao select:focus {
    border-color: var(--verde-botao);
}


/* Botão mostrar senha */

.botao-olho {
    border: none;

    background: transparent;

    color: var(--verde-principal);

    font-size: 20px;

    cursor: pointer;

    padding: 5px;
}


/* Checkbox */

.area-checkbox {
    display: flex;

    align-items: flex-start;

    gap: 10px;

    text-align: left;

    margin-top: 6px;

    padding: 0 4px;
}

.area-checkbox input {
    appearance: none;

    -webkit-appearance: none;

    flex-shrink: 0;

    width: 25px;
    height: 25px;

    border-radius: 50%;

    border: 2px solid var(--verde-principal);

    background: transparent;

    cursor: pointer;

    position: relative;

    margin-top: 1px;
}

.area-checkbox input:checked {
    background: var(--verde-botao);

    border-color: var(--verde-botao);
}

.area-checkbox input:checked::after {
    content: "✓";

    position: absolute;

    top: 50%;
    left: 50%;

    transform: translate(-50%, -50%);

    color: white;

    font-size: 16px;

    font-weight: bold;
}

.area-checkbox label {
    color: var(--texto);

    font-size: 14px;

    line-height: 1.4;

    cursor: pointer;
}


/* Mensagem de erro */

.mensagem-erro {
    min-height: 18px;

    color: #a12a2a;

    font-size: 13px;
}


/* Botão cadastrar */

.botao-cadastrar {
    width: 100%;

    min-height: 56px;

    padding: 14px 25px;

    border: 2px solid var(--verde-botao);

    border-radius: 35px;

    background: var(--verde-botao);

    color: white;

    font-size: 21px;

    font-weight: bold;

    font-family: inherit;

    cursor: pointer;

    display: flex;
    align-items: center;
    justify-content: center;

    gap: 15px;

    transition:
        background-color 0.2s ease,
        transform 0.2s ease;
}

.botao-cadastrar:hover {
    background: var(--verde-escuro);

    transform: translateY(-2px);
}

.botao-cadastrar:active {
    transform: scale(0.98);
}

.seta {
    font-size: 25px;
}


/* Link de login */

.link-login {
    color: var(--texto);

    font-size: 14px;

    margin-top: 14px;
}

.link-login a {
    color: var(--verde-principal);

    font-weight: bold;

    text-decoration: none;
}

.link-login a:hover {
    text-decoration: underline;
}


/* Folhas decorativas */

.folhas {
    position: absolute;

    width: 170px;
    height: 170px;

    opacity: 0.85;

    z-index: 1;
}

.folhas::before,
.folhas::after {
    content: "";

    position: absolute;

    width: 34px;
    height: 75px;

    background: #4e934c;

    border-radius: 100% 0 100% 0;

    transform: rotate(-35deg);
}

.folhas::before {
    left: 35px;
    top: 25px;
}

.folhas::after {
    left: 72px;
    top: 60px;

    transform: rotate(35deg);
}

.folhas-superior-esquerda {
    top: -35px;
    left: -30px;

    transform: rotate(-25deg);
}

.folhas-superior-direita {
    top: -35px;
    right: -30px;

    transform: rotate(25deg);
}

.folhas-inferior-esquerda {
    bottom: -40px;
    left: -30px;

    transform: rotate(25deg);
}

.folhas-inferior-direita {
    bottom: -40px;
    right: -30px;

    transform: rotate(-25deg);
}


/* Responsividade */

@media (max-width: 600px) {

    .conteudo-cadastro {
        width: min(92%, 400px);

        padding: 20px 0;
    }

    .botao-voltar {
        top: 15px;
        left: 15px;

        width: 38px;
        height: 38px;

        font-size: 25px;
    }

    .area-logo {
        width: 220px;
        height: 130px;

        margin-bottom: 0;
    }

    h1 {
        font-size: 24px;

        margin-bottom: 10px;
    }

    .descricao {
        font-size: 14px;

        margin-bottom: 18px;
    }

    .form-cadastro {
        gap: 8px;
    }

    .campo {
        height: 50px;
    }

    .area-checkbox label {
        font-size: 12px;
    }

    .botao-cadastrar {
        min-height: 52px;

        font-size: 19px;
    }
    
}

/* ÍCONE DE OLHO DA SENHA */

.icone-olho {
    position: relative;

    display: inline-block;

    width: 25px;
    height: 17px;

    border: 2px solid currentColor;
    border-radius: 75% 15%;

    transform: rotate(45deg);

    transition: 0.2s ease;
}

/* Bolinha dentro do olho */

.icone-olho::before {
    content: "";

    position: absolute;

    width: 7px;
    height: 7px;

    background-color: currentColor;

    border-radius: 50%;

    top: 3px;
    left: 7px;

    transform: rotate(-45deg);
}

/* Risco indicando olho fechado */

.icone-olho.oculto::after {
    content: "";

    position: absolute;

    width: 31px;
    height: 2px;

    background-color: currentColor;

    top: 6px;
    left: -5px;

    transform: rotate(-45deg);
}
</style>
    
</head>

<body>

    <main class="tela-cadastro">

        <!-- Botão voltar para index.jsp -->

        <a href="index.jsp"
           class="botao-voltar"
           aria-label="Voltar para a tela inicial">

            ←

        </a>


        <!-- Folhas decorativas -->

        <div class="folhas folhas-superior-esquerda"></div>
        <div class="folhas folhas-superior-direita"></div>
        <div class="folhas folhas-inferior-esquerda"></div>
        <div class="folhas folhas-inferior-direita"></div>


        <section class="conteudo-cadastro">


            <!-- Logo -->

            <div class="area-logo">

                <img src="img/logo_recria.png"
                     alt="Logo ReCria"
                     class="logo">

            </div>


            <!-- Título -->

            <h1>Crie sua conta no ReCria</h1>


            <p class="descricao">

                Junte-se a nós e faça parte de uma<br>
                comunidade mais sustentável.

            </p>


            <!-- Formulário -->

            <form id="formCadastro"
                  class="form-cadastro">


                <!-- Nome -->

                <div class="campo">

                    <span class="icone">&#x1F464</span>

                    <input type="text"
                           id="nome"
                           name="nome"
                           placeholder="Nome"
                           autocomplete="name"
                           required>

                </div>


                <!-- E-mail -->

                <div class="campo">

                    <span class="icone">&#x1F4E7;</span>

                    <input type="email"
                           id="email"
                           name="email"
                           placeholder="E-mail"
                           autocomplete="email"
                           required>

                </div>


                <!-- País / Estado -->

                <div class="campo campo-localizacao">

                    <span class="icone">&#x1F30D</span>

                    <div class="selecao-local">

                        <button type="button"
                                class="botao-localizacao"
                                id="botaoLocalizacao">

                            <span id="textoLocalizacao">
                                País/Estado
                            </span>

                            <span class="seta-select">⌄</span>

                        </button>


                        <div class="menu-localizacao"
                             id="menuLocalizacao">

                            <!-- País -->

                            <label for="pais">País</label>

                            <select id="pais"
                                    name="pais"
                                    required>

                                <option value="" disabled selected>
                                    Selecione o país
                                </option>

                                <option value="Brasil">
                                    Brasil
                                </option>

                            </select>


                            <!-- Estado -->

                            <label for="estado">Estado</label>

                            <select id="estado"
                                    name="estado"
                                    required
                                    disabled>

                                <option value="" disabled selected>
                                    Selecione o estado
                                </option>

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
                                <option value="Tocantins">Tocantins</option>

                            </select>

                        </div>

                    </div>

                </div>


                <!-- Telefone -->

                <div class="campo">

                    <span class="icone">&#x1F4DE</span>

                    <input type="tel"
                           id="telefone"
                           name="telefone"
                           placeholder="Telefone (opcional)">

                </div>


                <!-- Senha -->

                <div class="campo">

                    <span class="icone">&#x1F512</span>

                    <input type="password"
                           id="senha"
                           name="senha"
                           placeholder="Senha"
                           minlength="8"
                           required>

                   <!-- Botão mostrar/ocultar senha -->

<button type="button"
        class="botao-olho"
        id="btnSenha"
        aria-label="Mostrar senha">

    <span class="icone-olho oculto"></span>

</button>

                </div>


                <!-- Confirmar senha -->

                <div class="campo">

                    <span class="icone">&#x1F512</span>

                    <input type="password"
                           id="confirmarSenha"
                           name="confirmarSenha"
                           placeholder="Confirmar senha"
                           minlength="8"
                           required>

                    <!-- Botão mostrar/ocultar confirmação -->

<button type="button"
        class="botao-olho"
        id="btnConfirmarSenha"
        aria-label="Mostrar confirmação de senha">

    <span class="icone-olho oculto"></span>

</button>

                </div>


                <!-- Checkbox -->

                <div class="area-checkbox">

                    <input type="checkbox"
                           id="idade"
                           name="idade"
                           required>

                    <label for="idade">

                        Declaro que tenho 12 anos ou mais,
                        ou possuo autorização dos responsáveis legais.

                    </label>

                </div>


                <!-- Mensagem de erro -->

                <p id="mensagemErro"
                   class="mensagem-erro"></p>


                <!-- Botão cadastrar -->

                <button type="submit"
                        class="botao-cadastrar">

                    Cadastrar

                    <span class="seta">→</span>

                </button>


            </form>


            <!-- Link para login -->

            <p class="link-login">

                Já tem conta?

                <a href="login.jsp">

                    Faça seu login

                </a>

            </p>


        </section>

    </main>


    <!-- JavaScript -->

    <script>


        // País / Estado

        const botaoLocalizacao =
            document.getElementById("botaoLocalizacao");

        const menuLocalizacao =
            document.getElementById("menuLocalizacao");

        const pais =
            document.getElementById("pais");

        const estado =
            document.getElementById("estado");

        const textoLocalizacao =
            document.getElementById("textoLocalizacao");


        // Abrir e fechar o menu

        botaoLocalizacao.addEventListener("click", function () {

            menuLocalizacao.classList.toggle("aberto");

        });


        // Habilitar estado após selecionar Brasil

        pais.addEventListener("change", function () {

            if (pais.value === "Brasil") {

                estado.disabled = false;

                estado.value = "";

            }

        });


        // Mostrar país e estado escolhidos

        estado.addEventListener("change", function () {

            if (estado.value !== "") {

                textoLocalizacao.textContent =
                    pais.value + "/" + estado.value;

                menuLocalizacao.classList.remove("aberto");

            }

        });


        // Fechar o menu ao clicar fora

        document.addEventListener("click", function (event) {

            if (!event.target.closest(".campo-localizacao")) {

                menuLocalizacao.classList.remove("aberto");

            }

        });


        function configurarOlho(idCampo, idBotao) {

    const campo = document.getElementById(idCampo);

    const botao = document.getElementById(idBotao);

    const icone = botao.querySelector(".icone-olho");

    botao.addEventListener("click", function () {

        if (campo.type === "password") {

            campo.type = "text";

            icone.classList.remove("oculto");

            botao.setAttribute(
                "aria-label",
                "Ocultar senha"
            );

        } else {

            campo.type = "password";

            icone.classList.add("oculto");

            botao.setAttribute(
                "aria-label",
                "Mostrar senha"
            );

        }

    });

}


        configurarOlho("senha", "btnSenha");

        configurarOlho(
            "confirmarSenha",
            "btnConfirmarSenha"
        );


        // Formulário de cadastro

        const formCadastro =
            document.getElementById("formCadastro");

        const mensagemErro =
            document.getElementById("mensagemErro");

        formCadastro.addEventListener("submit", function (event) {
            event.preventDefault();

            const nome =
                document.getElementById("nome").value.trim();

            const email =
                document.getElementById("email").value.trim();

            const valorPais = pais.value;
            const valorEstado = estado.value;

            const telefone =
                document.getElementById("telefone").value.trim();

            const valorSenha =
                document.getElementById("senha").value;

            const valorConfirmarSenha =
                document.getElementById("confirmarSenha").value;

            const idade =
                document.getElementById("idade").checked;

            mensagemErro.style.color = "#a12a2a";
            mensagemErro.textContent = "";

            if (nome === "") {
                mensagemErro.textContent = "Preencha o nome.";
                return;
            }

            if (email === "") {
                mensagemErro.textContent = "Preencha o e-mail.";
                return;
            }

            if (valorPais !== "Brasil" || valorEstado === "") {
                mensagemErro.textContent =
                    "Selecione o país e o estado.";
                return;
            }

            if (valorSenha.length < 8) {
                mensagemErro.textContent =
                    "A senha deve ter pelo menos 8 caracteres.";
                return;
            }

            if (valorSenha !== valorConfirmarSenha) {
                mensagemErro.textContent =
                    "As senhas não são iguais.";
                return;
            }

            if (!idade) {
                mensagemErro.textContent =
                    "Marque a declaração de idade ou autorização.";
                return;
            }

            let usuarios = [];

            try {
                usuarios = JSON.parse(
                    localStorage.getItem("recriaUsuarios") || "[]"
                );

                if (!Array.isArray(usuarios)) {
                    usuarios = [];
                }
            } catch (erro) {
                mensagemErro.textContent =
                    "Não foi possível ler os cadastros salvos neste navegador.";
                return;
            }

            const emailExiste = usuarios.some(function (usuario) {
                return usuario.email &&
                    usuario.email.toLowerCase() === email.toLowerCase();
            });

            if (emailExiste) {
                mensagemErro.textContent =
                    "Esse e-mail já está cadastrado.";
                return;
            }

            usuarios.push({
                nome: nome,
                email: email,
                pais: valorPais,
                estado: valorEstado,
                telefone: telefone,
                senha: valorSenha,
                perfil: "usuario"
            });

            try {
                localStorage.setItem(
                    "recriaUsuarios",
                    JSON.stringify(usuarios)
                );
            } catch (erro) {
                mensagemErro.textContent =
                    "Não foi possível salvar o cadastro neste navegador.";
                return;
            }

            // Mantém o redirecionamento original para a tela inicial.
            window.location.href = "index.jsp";
        });


    </script>

</body>

</html>