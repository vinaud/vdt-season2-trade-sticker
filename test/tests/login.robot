***Settings***
Documentation       Login Tests
Resource            ../resources/main.resource

***Test Cases***
Deve logar com sucesso
    Go To Login Page
    Submit Credentials  papito@gmail.com  vaibrasil
    User Logged In

Não deve logar com senha in New Browser     
    Go To Login Page
    Submit Credentials          papito@gmail.com  abc123
    Toast Message Should Be     Credenciais inválidas, tente novamente!