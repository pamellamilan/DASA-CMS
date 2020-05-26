login_page = LoginPage.new

Dado("que esteja no site Labfa") do
  visit ("http://hml.labfa.cmsdasa.com.br/")
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
  page.has_content?'https://sislu.dasa.com.br/sislu/portal/Portal.action'
  login_page.Sair.click
end

Dado("que preencha o campo CIP INVALIDO") do
  visit("http://hml.labfa.cmsdasa.com.br/")
    login_page.Formulario.click
    login_page.CIP.set ""
    login_page.Senha.set ""
    login_page.Nascimento.set ""
end

Dado("faça o login no site Labfa") do
  login_page.Enviar.click
  sleep(5)
end

Entao("devo ser redirecionada para a pagina do Sislu e uma msg de alerta deve ser exibido") do
  page.has_content?'https://sislu.dasa.com.br/sislu/portal/Portal.action'
  login_page.Sair.click
end
