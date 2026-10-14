<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ReCria - Início</title>

    <link rel="stylesheet" href="css/style.css">
    
    <style>
    
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {
    --verde-principal: #075c2b;
    --verde-botao: #0b6b32;
    --verde-fundo: #eaf5e6;
}

body {
    min-height: 100vh;

    font-family: Arial, Helvetica, sans-serif;

    background: var(--verde-fundo);

    color: var(--verde-principal);
}

.tela-inicial {
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

.conteudo {
    position: relative;

    z-index: 2;

    width: min(90%, 430px);

    text-align: center;

    display: flex;
    flex-direction: column;
    align-items: center;
}

.area-logo {
    width: 280px;
    height: 190px;

    display: flex;
    align-items: center;
    justify-content: center;

    margin-bottom: 22px;
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

.slogan {
    color: var(--verde-principal);

    font-size: clamp(20px, 3vw, 27px);

    line-height: 1.45;

    font-weight: 500;

    margin-bottom: 42px;
}

.slogan span {
    font-weight: bold;
}

.botoes {
    width: min(100%, 350px);

    display: flex;
    flex-direction: column;

    gap: 18px;
}

/* Estilo dos links usados como botões */

.botao {
    display: flex;

    align-items: center;
    justify-content: center;

    text-decoration: none;

    width: 100%;

    min-height: 62px;

    padding: 14px 25px;

    border-radius: 35px;

    font-size: 22px;

    font-weight: bold;

    font-family: inherit;

    cursor: pointer;

    transition:
        transform 0.2s ease,
        background-color 0.2s ease;
}

.botao:hover {
    transform: translateY(-2px);
}

.botao:active {
    transform: scale(0.98);
}

/* Botão Entrar */

.botao-entrar {
    color: white;

    background: var(--verde-botao);

    border: 2px solid var(--verde-botao);
}

.botao-entrar:hover {
    background: #084f27;
}

/* Botão Criar conta */

.botao-cadastro {
    color: var(--verde-principal);

    background: transparent;

    border: 2px solid var(--verde-principal);
}

.botao-cadastro:hover {
    background: rgba(11, 107, 50, 0.08);
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

/* Posicionamento das folhas */

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

/* Responsividade para celulares */

@media (max-width: 600px) {

    .area-logo {
        width: 235px;
        height: 165px;

        margin-bottom: 12px;
    }

    .slogan {
        font-size: 20px;

        margin-bottom: 32px;
    }

    .botoes {
        width: min(100%, 330px);

        gap: 15px;
    }

    .botao {
        min-height: 56px;

        font-size: 20px;
    }

}
</style>
    
</head>

<body>

    <main class="tela-inicial">

        <div class="folhas folhas-superior-esquerda"></div>
        <div class="folhas folhas-superior-direita"></div>
        <div class="folhas folhas-inferior-esquerda"></div>
        <div class="folhas folhas-inferior-direita"></div>

        <section class="conteudo">

            <!-- Espaço reservado para a logo ReCria -->
            <div class="area-logo">

                <img src="img/logo_recria.png"
                     alt="Logo ReCria"
                     class="logo">

                <p class="texto-logo">
                    INSIRA A LOGO ReCria AQUI
                </p>

            </div>

            <p class="slogan">
                Sua ideia, seu material,<br>
                <span>infinitas possibilidades.</span>
            </p>

            <div class="botoes">

                <!-- Botão para a tela de login -->
                <a href="login.jsp"
                   class="botao botao-entrar">

                    Entrar

                </a>

                <!-- Botão para a tela de cadastro -->
                <a href="cadastro.jsp"
                   class="botao botao-cadastro">

                    Criar conta

                </a>

            </div>

        </section>

    </main>

</body>
</html>