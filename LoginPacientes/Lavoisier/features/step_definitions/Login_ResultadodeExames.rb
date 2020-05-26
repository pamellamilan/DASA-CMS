login_page = LoginPage.new

Dado("que esteja no site Lavoisier") do
  visit("http://hml.lavoisier.cmsdasa.com.br/")
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
    visit("http://hml.lavoisier.cmsdasa.com.br/")
    login_page.Formulario.click
    login_page.CIP.set ""
    login_page.Senha.set ""
    login_page.Nascimento.set ""
end

Dado("faça o login no site Lavoisier") do
  login_page.Enviar.click
  sleep(5)
end

 Entao("devo ser redirecionada para a pagina do Sislu e uma msg de alerta deve ser exibido") do
   page.has_content?'https://sislu.dasa.com.br/sislu/portal/Portal.action'
   login_page.Sair.click
end

# Dado("que eu NÃO preencha nenhum campo") do
#   visit("http://hml.lavoisier.cmsdasa.com.br/")
#   login_page.Formulario.click
#   login_page.CIP.set ""
#   login_page.Senha.set ""
#   login_page.Nascimento.set ""
#   login_page.Enviar.click
#   sleep(5)
# end
#
# Entao("devo exibir uma msg de alerta que nao pode haver campos em brancos") do
#   page.has_content?'Preencha os campos corretamente e tente novamente'
#   page.save_screenshot('loginembranco_evidencia_success_#{$id}.png')
# end
#
# Dado("que eu preencha os campos CIP ou o campo SENHA com caracteres especiais") do
#   visit("http://hml.lavoisier.cmsdasa.com.br/")
#   login_page.Formulario.click
#   login_page.CIP.set "@@@@@"
#   login_page.Senha.set ""
#   login_page.Nascimento.set ""
#   login_page.Enviar.click
#   sleep(5)
# end
#
# Entao("devo ser redirecionada para a pagina do Sislu e msg de aleta de campos invalidos") do
#   page.has_content?'https://sislu.dasa.com.br/sislu/portal/Portal.action'
#   page.save_screenshot('logincaracter_evidencia_success_#{$id}.png')
# end
#
# Dado("que eu NÃO preencha o campo CIP") do
#   visit("http://hml.lavoisier.cmsdasa.com.br/")
#   login_page.Formulario.click
#   login_page.CIP.set ""
#   login_page.Senha.set ""
#   login_page.Nascimento.set ""
#   login_page.Enviar.click
#   sleep(5)
# end
#
# Entao("NÃO DEVO conseguir realizar o login, e uma msg deve ser exibida alertando o paciente") do
#   page.has_content?'Preencha os campos corretamente e tente novamente'
#   page.save_screenshot('loginsemcip_evidencia_success_#{$id}.png')
# end
#
# Dado("que eu NÃO preencha o campo SENHA ou Data de Nascimento") do
#   visit("http://hml.lavoisier.cmsdasa.com.br/")
#   login_page.Formulario.click
#   login_page.CIP.set ""
#   login_page.Senha.set ""
#   login_page.Nascimento.set ""
#   login_page.Enviar.click
#   sleep(5)
# end
#
# Entao("NÃO DEVO conseguir realizar o login, e uma msg deve ser exibida alertando o paciente que o campo Senha ou Data de Nascimento esta sem preenchimento") do
#   page.has_?'Preencha os campos corretamente e tente novamente'
#   page.save_screenshot('loginsenhanasc_evidencia_success_#{$id}.png')
# end
