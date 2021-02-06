#language: pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas


    Cenario: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | usuarioteste@hotmail.com |
            | senha          | senha123                 |
            | senha_confirma | senha123                 |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | senha_confirma | <senha_confirma> |
        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
            | email                    | senha    | senha_confirma | mensagem_saida                       |
            |                          | senha123 | senha123       | Oops! Informe seu email.             |
            | usuarioteste@hotmail.com |          |                | Oops! Informe sua senha.             |
            | usuarioteste@hotmail.com | senha123 | abc123         | Oops! Senhas não são iguais.         |
            |                          |          |                | Oops! Informe seu email e sua senha. |

    Cenario: Validação do campo email

        Quando acesso a pagina de cadastro
        Entao deve exibir o seguinte css: "input[type=email]"