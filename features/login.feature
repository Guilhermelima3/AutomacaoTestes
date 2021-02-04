#language: pt

Funcionalidade: Login de Usuários
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que eu possa ter acesso as playlists do Parodify

    Cenario: Login do usuario
        Dado que acesso a página Login
        Quando submeto minhas credenciais com: "usuarioteste@hotmail.com" e "senha123"
        Então devo ser redirecionado para a área logada

    Esquema do Cenario: Tentativa de Login
        Dado que acesso a página Login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email              | senha    |
            | usuario@teste.com  | senh321  |
            |                    |          |
            | usuario@teste2.com |          |
            |                    | senha321 |