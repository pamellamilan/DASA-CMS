login_page = LoginPage.new

Dado("que esteja no site Alvaro") do
  visit ("http://hml.alvaro.cmsdasa.com.br/")
end

Dado("selecione o campo Resultados de exames") do
  login_page.Formulario.click
end

Dado("realize o login") do
  login_page.CIP.set ""
  login_page.Senha.set ""
  login_page.Nascimento.set ""
  login_page.Enviar.click
  sleep(5)
end

Entao("devo ser redirecionada para a pagina de meus exames") do
  page.has_content?'http://www.laboratorioonline.com.br/gliese/rot_div/visitas_pg.asp'
  #login_page.Sair.click
  expect(page).to have_no_link("Foo", :href=> "http://www.laboratorioonline.com.br/gliese/alvarocascavel/paclogin.asp")
end

Dado("que preencha o campo CIP INVALIDO") do
  visit("http://hml.alvaro.cmsdasa.com.br/")
    login_page.Formulario.click
    login_page.CIP.set ""
    login_page.Senha.set ""
    login_page.Nascimento.set ""
end

Dado("faça o login no site Alvaro") do
  login_page.Enviar.click
  sleep(5)
end

Entao("devo ser redirecionada para a pagina do Apoio com a mensagem de Acesso negado") do
  page.has_content?'https://laudos.alvaro.com.br/online/errologin.php'
end
