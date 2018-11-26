# encoding: utf-8

Dado(/^que eu acesse o facebook/) do
    visit 'https://www.facebook.com/' # Acessa o link https://www.facebook.com/.
end

Quando(/^eu preencher os campos de login e clicar em entrar/) do
    fill_in 'email', :with => "seuemail" # Insere no campo email o valor seuemail.
    fill_in 'pass', :with => "suasenha" # Insere no campo pass o valor suasenha.
    click_button 'Entrar' # Clica no botão entrar para efetuar o login.
    sleep(5) # Aguarda 5 segundos para load completo do site.
    
end

E(/^navegar ate Configuracoes da conta e clicar/) do
    page.find(:id => 'userNavigationLabel').click # Procura pelo id userNavigationLabel e clica nele.
    sleep(5) # Aguarda 5 segundo antes do próximo passo.
end

Entao (/^selecionar sair e clicar/) do
    click_on('Sair') # Com o menu aberto, clica na opção Sair.
    sleep(10) # Aguarda 10 segundos antes de concluir o teste.
end   

