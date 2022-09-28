***Settings***

Documentation       Login Tests
Library             Browser

**Variables***
${header_title}     Aquela figurinha incrível a um clique de distância.
***Test Cases***

Deve logar com sucesso
    New Browser     headless=False
    New Page        https://trade-sticker-dev.vercel.app

    Fill Text       input[name=email]          papito@gmail.com
    Fill Text       input[name=password]       vaibrasil
    Click           button >> text=Entrar
    Get Text        .header-content strong  equal  ${header_title}

Não deve logar com senha in New Browser     
    New Browser     headless=False
    New Page        https://trade-sticker-dev.vercel.app

    Fill Text       input[name=email]          papito@gmail.com
    Fill Text       input[name=password]       abc123
    Click           button >> text=Entrar

    ${locator}       Set Variable              .Toastify__toast-body div >> text=Credenciais inválidas, tente novamente!
    
    Wait For Elements State     ${locator}      visible     10
   