# language:pt

Funcionalidade: Aprendendo a usar tudo isso_2
# Algum texto descritivo do que e desejado

Cenario: Exemplo basico de login e logout
#  Uma determinada situacao de negocios

    Dado que eu acesse o facebook
    # Ponto de partida do teste
    Quando eu preencher os campos de login e clicar em entrar
    # Realiza o login
    E navegar ate Configuracoes da conta e clicar
    # Passos para encontrar o botao sair
    Entao selecionar sair e clicar
    # Resultado esperado: logout

    