class LoginPage < SitePrism::Page
  set_url "http://hml.delboniauriemo.cmsdasa.com.br/"

  element :Formulario, '#block-examinationresultsblock'
  element :CIP, '#ER_fieldText1'
  element :Senha, '#ER_fieldPassword'
  element :Nascimento, "#ER_fieldText2"
  element :Enviar, '#button-form-login'
  element :Sair, "span[value='Sair']"
end
