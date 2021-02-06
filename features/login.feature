#language: pt

Funcionalidade: Login de Usuários
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que eu possa ter acesso as playlists do Parodify

    @smoke
    Cenario: Login do usuario
        Dado que acesso a página Login
        Quando submeto minhas credenciais com: "guilhermelima@hotmail.com" e "senha321"
        Então devo ser redirecionado para a área logada

    Esquema do Cenario: Tentativa de Login
        Dado que acesso a página Login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email                     | senha    |
            | guilhermel@hotmail.com    | senha321 |
            |                           |          |
            | guilhermelima@hotmail.com |          |
            |                           | senha321 |