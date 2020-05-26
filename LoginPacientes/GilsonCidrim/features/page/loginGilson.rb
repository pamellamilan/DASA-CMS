class LoginPage < SitePrism::Page
  set_url "http://hml.gilsoncidrim.cmsdasa.com.br/"

  element :Formulario, '#block-examinationresultsblock'
  element :Localizador, '#ER_fieldText1'
  element :Senha, '#ER_fieldPassword'
  element :Enviar, '#button-form-login'
end
