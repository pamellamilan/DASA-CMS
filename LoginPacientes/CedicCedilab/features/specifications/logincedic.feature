#language: pt
@logincedic

Funcionalidade: Para realizar o login na funcionalidade resultado de exames pacientes da marca Cedic Cedilab
Eu como paciente Cedic Cedilab
Quero visualizar meus exames no site Cedic Cedilab

Cenario:Validar Login de Pacientes Cedic Cedilab
Dado que esteja no site Cedic Cedilab
E selecione o campo Resultados de exames
E realize o login
Entao devo ser redirecionada para a pagina de meus exames

Cenario:Validar Login invalido campo Senha
Dado que preencha o campo Senha INVALIDO
E faça o login no site Cedic cedilab
Entao devo ser redirecionada para a pagina do Sislu e uma msg de alerta deve ser exibida
