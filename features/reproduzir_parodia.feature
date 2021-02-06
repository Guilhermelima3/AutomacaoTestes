#language: pt

Funcionalidade: Reproduzir Paródia
    Sendo um usuário previamente cadastrado
    Quero reproduzir musicas no player do Parodify
    Para que eu possa ouvir as paródias das minhas bandas favoritas

    Contexto: Login
        * Login com "guilhermelima@hotmail.com" e "senha321"

    Cenario: Ouvir Paródia

        E que eu gosto muito de "rap"
        Quando toco a seguinte canção:
            | parodia | Java is Life |
            | banda   | DevNem       |
        Entao essa paródia deve ficar em modo reprodução