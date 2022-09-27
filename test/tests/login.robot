***Settings***

Documentation       Login Tests
Library             Browser

**Variables***
${header_title}     Aquela figurinha incrível a um clique de distância.
***Test Cases***

Deve logar com sucesso
    New Browser     headless=false
    New Page        https://trade-sticker-dev.vercel.app
    Fill Text       input[name=email]          papito@gmail.com
    Fill Text       input[name=password]       vaibrasil
    Click           button >> text=Entrar
    Get Text        .header-content strong  equal  ${header_title}