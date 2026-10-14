<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ReCria - Login</title>

    <link rel="stylesheet" href="css/login.css">

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

.tela-login {
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

    top: 20px;
    left: 20px;

    z-index: 5;

    width: 46px;
    height: 46px;

    display: flex;
    align-items: center;
    justify-content: center;

    background: var(--verde-botao);

    color: white;

    border-radius: 50%;

    text-decoration: none;

    font-size: 30px;

    line-height: 1;

    transition: background-color 0.2s ease;
}

.botao-voltar:hover {
    background: var(--verde-escuro);
}


/* Conteúdo */

.conteudo-login {
    position: relative;

    z-index: 2;

    width: min(90%, 430px);

    text-align: center;

    display: flex;
    flex-direction: column;
    align-items: center;
}


/* Logo */

.area-logo {
    width: 280px;
    height: 190px;

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

.texto-logo {
    display: none;

    font-size: 18px;
    font-weight: bold;

    color: var(--verde-principal);

    border: 2px dashed var(--verde-principal);

    border-radius: 12px;

    padding: 30px 15px;
}

/* Remove o olho automático do navegador */
input[type="password"]::-ms-reveal,
input[type="password"]::-ms-clear {
    display: none;
}

/* Título */

h1 {
    font-size: 30px;

    color: var(--verde-principal);

    margin-bottom: 16px;
}

.descricao {
    color: var(--texto);

    font-size: 17px;

    line-height: 1.5;

    margin-bottom: 28px;
}


/* Formulário */

.form-login {
    width: min(100%, 400px);

    display: flex;
    flex-direction: column;

    gap: 16px;
}


/* Campos */

.campo {
    position: relative;

    width: 100%;

    height: 62px;

    display: flex;
    align-items: center;

    background: rgba(255, 255, 255, 0.35);

    border: 2px solid var(--borda);

    border-radius: 15px;

    padding: 0 18px;

    transition: border-color 0.2s ease;
}

.campo:focus-within {
    border-color: var(--verde-botao);
}

.icone {
    color: var(--verde-principal);

    font-size: 25px;

    margin-right: 14px;
}

.campo input {
    width: 100%;

    height: 100%;

    border: none;

    outline: none;

    background: transparent;

    color: var(--verde-principal);

    font-size: 17px;

    font-family: inherit;
}

.campo input::placeholder {
    color: #708276;
}

/* ÍCONE DE OLHO DA SENHA */

.icone-olho {
    position: relative;
    display: inline-block;

    width: 25px;
    height: 17px;

    border: 2px solid currentColor;
    border-radius: 75% 15%;

    /* Mantém a inclinação anterior */
    transform: rotate(-45deg);

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
    left: 8px;

    transform: none;
}


/* Risco indicando olho fechado */

.botao-olho.oculto .icone-olho::after {
    content: "";

    position: absolute;

    width: 31px;
    height: 2px;

    background-color: currentColor;

    top: 6px;
    left: -5px;

    /* Risquinho diagonal igual ao anterior */
    transform: rotate(90deg);
}

.botao-olho {
    transform: rotate(90deg);
}

/* Mensagem de erro */

.mensagem-erro {
    min-height: 20px;

    color: #a12a2a;

    font-size: 14px;
}


/* Botão Entrar */

.botao-entrar {
    width: 100%;

    min-height: 62px;

    padding: 14px 25px;

    border: 2px solid var(--verde-botao);

    border-radius: 35px;

    background: var(--verde-botao);

    color: white;

    font-size: 22px;

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

.botao-entrar:hover {
    background: var(--verde-escuro);

    transform: translateY(-2px);
}

.botao-entrar:active {
    transform: scale(0.98);
}

.seta {
    font-size: 27px;
}


/* Link de cadastro */

.link-cadastro {
    color: var(--texto);

    font-size: 16px;

    margin-top: 22px;
}

.link-cadastro a {
    color: var(--verde-principal);

    font-weight: bold;

    text-decoration: none;
}

.link-cadastro a:hover {
    text-decoration: underline;
}

.botao-olho {
    border: none;

    background: transparent;

    color: var(--verde-principal);

    font-size: 20px;

    cursor: pointer;

    padding: 5px;
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

    .botao-voltar {
        top: 15px;
        left: 15px;

        width: 42px;
        height: 42px;

        font-size: 27px;
    }

    .area-logo {
        width: 235px;
        height: 165px;

        margin-bottom: 0;
    }

    h1 {
        font-size: 26px;
    }

    .descricao {
        font-size: 15px;

        margin-bottom: 24px;
    }

    .form-login {
        width: 100%;
    }

    .campo {
        height: 58px;
    }

    .botao-entrar {
        min-height: 56px;

        font-size: 20px;
    }

    .link-cadastro {
        font-size: 14px;
    }

}
</style>
    
</head>

<body>

    <main class="tela-login">

        <!-- Folhas decorativas -->

        <div class="folhas folhas-superior-esquerda"></div>
        <div class="folhas folhas-superior-direita"></div>
        <div class="folhas folhas-inferior-esquerda"></div>
        <div class="folhas folhas-inferior-direita"></div>


        <!-- Botão para voltar à tela inicial -->

        <a href="index.jsp" class="botao-voltar" aria-label="Voltar para a tela inicial">

            ←

        </a>


        <section class="conteudo-login">


            <!-- Logo ReCria -->

            <div class="area-logo">

                <img src="img/logo_recria.png"
                     alt="Logo ReCria"
                     class="logo">

                <p class="texto-logo">

                    INSIRA A LOGO ReCria AQUI

                </p>

            </div>


            <!-- Título -->

            <h1>Faça seu login</h1>


            <p class="descricao">

                Entre na sua conta e continue<br>
                criando um futuro mais sustentável.

            </p>


            <!-- Formulário de login -->

            <form id="formLogin" class="form-login">


                <!-- Nome de usuário -->

                <div class="campo">

                    <span class="icone">&#x1F464</span>

                    <input type="text"
                           id="usuario"
                           name="usuario"
                           placeholder="Nome de usuário"
                           autocomplete="username"
                           required>

                </div>


                <!-- Senha -->

                <div class="campo">

                    <span class="icone">&#x1F512</span>

                    <input type="password"
                           id="senha"
                           name="senha"
                           placeholder="Senha"
                           autocomplete="current-password"
                           minlength="8"
                           required>

                    <button type="button"
        class="botao-olho oculto"
        id="btnSenha"
        aria-label="Mostrar senha">

    <span class="icone-olho"></span>

</button>

                </div>


                <!-- Mensagem de erro -->

                <p id="mensagemErro" class="mensagem-erro"></p>


                <!-- Botão Entrar -->

                <button type="submit" class="botao-entrar">

                    Entrar

                    <span class="seta">→</span>

                </button>


            </form>


            <!-- Link para cadastro -->

            <p class="link-cadastro">

                Não tem conta?

                <a href="cadastro.jsp">

                    Crie sua conta no ReCria

                </a>

            </p>


        </section>

    </main>


    <!-- JavaScript -->


<script>
    const senha = document.getElementById("senha");
    const btnSenha = document.getElementById("btnSenha");
    const formLogin = document.getElementById("formLogin");
    const mensagemErro = document.getElementById("mensagemErro");

    // Contas fixas de moderador e administrador.
    const contasEspeciais = [
        {
            usuario: "moderador",
            senha: "moderador123",
            nome: "moderador",
            email: "moderador@recria.demo",
            pais: "Brasil",
            estado: "Rio Grande do Sul",
            perfil: "moderador"
        },
        {
            usuario: "administrador",
            senha: "admin1234",
            nome: "administrador",
            email: "admin@recria.demo",
            pais: "Brasil",
            estado: "Rio Grande do Sul",
            perfil: "administrador"
        }
    ];

    // Mostrar ou ocultar a senha.
    btnSenha.addEventListener("click", function () {
        if (senha.type === "password") {
            senha.type = "text";
            btnSenha.classList.remove("oculto");
            btnSenha.setAttribute("aria-label", "Ocultar senha");
        } else {
            senha.type = "password";
            btnSenha.classList.add("oculto");
            btnSenha.setAttribute("aria-label", "Mostrar senha");
        }
    });

    // Verificar o login.
    formLogin.addEventListener("submit", function (event) {
        event.preventDefault();

        const identificador =
            document.getElementById("usuario").value.trim();

        const senhaDigitada = senha.value;

        mensagemErro.textContent = "";

        if (identificador === "" || senhaDigitada === "") {
            mensagemErro.textContent = "Preencha todos os campos.";
            return;
        }

        // Primeiro, verificar as contas especiais.
        let conta = contasEspeciais.find(function (item) {
            return item.usuario.toLowerCase() ===
                       identificador.toLowerCase()
                && item.senha === senhaDigitada;
        });

        // Se não for moderador nem administrador,
        // procurar o usuário comum pelo nome e senha cadastrados.
        if (!conta) {
            let usuarios = [];

            try {
                usuarios = JSON.parse(
                    localStorage.getItem("recriaUsuarios") || "[]"
                );

                if (!Array.isArray(usuarios)) {
                    usuarios = [];
                }
            } catch (erro) {
                usuarios = [];
            }

            const usuarioEncontrado = usuarios.find(function (item) {
                return item.nome &&
                    item.nome.toLowerCase() ===
                        identificador.toLowerCase()
                    && item.senha === senhaDigitada;
            });

            if (usuarioEncontrado) {
                conta = {
                    usuario: usuarioEncontrado.nome,
                    nome: usuarioEncontrado.nome,
                    email: usuarioEncontrado.email || "",
                    pais: usuarioEncontrado.pais || "Brasil",
                    estado: usuarioEncontrado.estado || "",
                    perfil: "usuario"
                };
            }
        }

        // Se os dados não corresponderem a nenhuma conta.
        if (!conta) {
            mensagemErro.textContent =
                "Nome de usuário ou senha incorretos.";
            return;
        }

        // Guardar os dados da conta que entrou.
        const dadosPerfil = {
            usuario: conta.usuario,
            nome: conta.nome,
            email: conta.email,
            pais: conta.pais,
            estado: conta.estado,
            perfil: conta.perfil
        };

        localStorage.setItem(
            "recriaUsuarioLogado",
            JSON.stringify(dadosPerfil)
        );

        // Abrir o chat após o login.
        window.location.href = "chatia.jsp";
    });
</script>


</body>

</html>