login_page = LoginPage.new

Dado("que esteja no site Gilson Cidrim") do
  visit("http://hml.gilsoncidrim.cmsdasa.com.br/")
end

Dado("selecione o campo Resultados de exames") do
  login_page.Formulario.click
end

Dado("realize o login") do
  login_page.Localizador.set ""
  login_page.Senha.set ""
  login_page.Enviar.click
  sleep(5)
end

Entao("devo ser redirecionada para a pagina de meus exames") do
  page.has_content?'https://www.pulsesaude.com.br/LabNet'
end

Dado("que preencha o campo Senha INVALIDO") do
  visit("http://hml.gilsoncidrim.cmsdasa.com.br/")
    login_page.Formulario.click
    login_page.Localizador.set ""
    login_page.Senha.set ""
end

Dado("faça o login no Site Gilson") do
  login_page.Enviar.click
  sleep(5)
end

Entao("devo ser redirecionada para a pagina do Sislu e uma msg de alerta deve ser exibido") do
  page.has_content?'https://www.pulsesaude.com.br/Autenticacao/Entrar'
end
