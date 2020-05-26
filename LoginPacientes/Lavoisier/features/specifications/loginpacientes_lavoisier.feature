#language: pt
@loginlavoisier

Funcionalidade: Para realizar o login na funcionalidade resultado de exames pacientes
Eu como pacientes
Quero visualizar meus exames no site Lavoisier

Cenario:Validar Login de sucesso
Dado que esteja no site Lavoisier
E selecione o campo Resultados de exames
E realize o login
Entao devo ser redirecionada para a pagina de meus exames

Cenario:Validar Login invalido campo CIP
Dado que preencha o campo CIP INVALIDO
E faça o login no site Lavoisier
Entao devo ser redirecionada para a pagina do Sislu e uma msg de alerta deve ser exibido

# Cenario:Validar login em branco
# Dado que eu NÃO preencha nenhum campo
# E faça o login
# Entao devo exibir uma msg de alerta que nao pode haver campos em brancos
#
# Cenario:Validar login com caracteres especiais
# Dado que eu preencha os campos CIP ou o campo SENHA com caracteres especiais
# E faça o login
# Entao devo ser redirecionada para a pagina do Sislu e msg de aleta de campos invalidos
#
# Cenario:Validar login sem CIP
# Dado que eu NÃO preencha o campo CIP
# E faça o login
# Entao NÃO DEVO conseguir realizar o login, e uma msg deve ser exibida alertando o paciente
#
# Cenario:Validar login sem SENHA ou Data de Nascimento
# Dado que eu NÃO preencha o campo SENHA ou Data de Nascimento
# E faça o login
# Entao NÃO DEVO conseguir realizar o login, e uma msg deve ser exibida alertando o paciente que o campo Senha ou Data de Nascimento esta sem preenchimento
