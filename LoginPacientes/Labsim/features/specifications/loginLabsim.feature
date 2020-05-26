#language: pt
@loginlabsim

Funcionalidade: Para realizar o login na funcionalidade resultado de exames pacientes da marca Labsim
Eu como paciente Labsim
Quero visualizar meus exames no site Labsim

Cenario:Validar Login de Pacientes Labsim
Dado que esteja no site Labsim
E selecione o campo Resultados de exames
E realize o login
Entao devo ser redirecionada para a pagina de meus exames

Cenario:Validar Login invalido campo CIP
Dado que preencha o campo CIP INVALIDO
E faça o login no site Labsim
Entao devo ser redirecionada para a pagina do Sislu e uma msg de alerta deve ser exibido
