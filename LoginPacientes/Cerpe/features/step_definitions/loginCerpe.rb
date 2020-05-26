login_page = LoginPage.new

Dado("que esteja no site Cerpe") do
  visit("http://hml.cerpe.cmsdasa.com.br/")
end

Dado("selecione o campo Resultados de exames") do
  login_page.Formulario.click
end

Dado("realize o login") do
  login_page.CIP.set ""
  login_page.Senha.set ""
  login_page.Enviar.click
  sleep(5)
end

Entao("devo ser redirecionada para a pagina de meus exames") do
  page.has_content?'http://resultados.cerpe.com.br/atendimento/atendimentoItensExibirQuiron.php'
end

Dado("que preencha o campo CIP INVALIDO") do
  visit("http://hml.cerpe.cmsdasa.com.br/")
    login_page.Formulario.click
    login_page.CIP.set ""
    login_page.Senha.set ""
end

Dado("faça o login no site Cerpe") do
  login_page.Enviar.click
  sleep(5)
end

Entao("devo ser redirecionada para a pagina do Sislu e uma msg de alerta deve ser exibida") do
  page.has_content?'Atendimento/senha inválidos'
end
