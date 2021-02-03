#language: pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    @happy
    Cenario: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            |email|usuarioteste@hotmail.com|
            |senha|senha123|
            |senha_confirma|senha123|
        Então devo ser redirecionado para a área logada
    
    @temp
    Cenario: Email não informado
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            |email||
            |senha|senha123|
            |senha_confirma|senha123|
        Então devo ver a mensagem: "Oops! Informe seu email."    
     
    Cenario: senha não informada
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            |email|usuarioteste@hotmail.com|
            |senha||
            |senha_confirma||
        Então devo ver a mensagem: "Oops! Informe sua senha."    


    Cenario: Senha divergente
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            |email|usuarioteste@hotmail.com|
            |senha|senha123|
            |senha_confirma|qnlw321|
        Então devo ver a mensagem: "Opps! Senhas não são iguais."  
      
    Cenario: Nenhum campo preenchido
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            |email||
            |senha||
            |senha_confirma||
        Então devo ver a mensagem: "Opps! Informe seu email e sua senha."
  
