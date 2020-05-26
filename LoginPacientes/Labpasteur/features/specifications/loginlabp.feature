#language: pt
@loginlabp

Funcionalidade: Para realizar o login na funcionalidade resultado de exames pacientes da marca Labpasteur
Eu como paciente Labpasteur
Quero visualizar meus exames no site Labpasteur

Cenario:Validar Login de Pacientes Labpasteur
Dado que esteja no site Labpasteur
E selecione o campo Resultados de exames
E realize o login
Entao devo ser redirecionada para a pagina de meus exames

Cenario:Validar Login invalido campo CIP
Dado que preencha o campo CIP INVALIDO
E faça o login no site Labpasteur
Entao devo ser redirecionada para a pagina do Sislu e uma msg de alerta deve ser exibido
