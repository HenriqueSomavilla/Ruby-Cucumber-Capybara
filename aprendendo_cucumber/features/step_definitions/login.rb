# encoding: utf-8

# tp = Tipo de Servico


Dado(/^que eu acesse o app/) do
    visit 'http://localhost:8100' # Acessa o localhost
end

Quando(/^eu preencher os campos de login/) do
    fill_in 'email', :with => "seusdados.com.br" # Insere o email do formulario de login
    fill_in 'senha', :with => "suasenha" # Insere a senha no formulario de login
end

E(/^clicar em Entrar e navegar ate tp e preencher dados/) do
    click_button 'entrar' # Entra no sistema
    sleep(5) # Aguarda 5 segundo para obter os objetos de autenticacao
    visit 'http://localhost:8100/#/tipo-servico' # Acessa outra pagina dentro do sistema
    fill_in 'nome', :with => "Cucumber + Capybara + Ruby" # Insere o nome no formulario de cadastro tp
    fill_in 'desc', :with => "Este é apenas um exemplo" # Insere a descricao no formulario de cadastro tp
end

Então (/^salvar tipo de servico/) do
    sleep(3) # Aguarda 3 segundo antes de salvar
    click_button 'Salvar' # Persiste as informações clicando no botão Salvar
end   

