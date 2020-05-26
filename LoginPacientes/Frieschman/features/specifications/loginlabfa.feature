#language: pt
@loginlabfa

Funcionalidade: Para realizar o login na funcionalidade resultado de exames pacientes da marca Labfa
Eu como paciente Labfa
Quero visualizar meus exames no site Labfa

Cenario:Validar Login de Pacientes Labfa
Dado que esteja no site Labfa
E selecione o campo Resultados de exames
E realize o login
Entao devo ser redirecionada para a pagina de meus exames

Cenario:Validar Login invalido campo CIP
Dado que preencha o campo CIP INVALIDO
E faça o login no site Labfa
Entao devo ser redirecionada para a pagina do Sislu e uma msg de alerta deve ser exibido
