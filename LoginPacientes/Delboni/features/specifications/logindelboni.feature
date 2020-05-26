#language: pt
@logindelboni

Funcionalidade: Para realizar o login na funcionalidade resultado de exames pacientes da marca Delboni
Eu como paciente Delboni
Quero visualizar meus exames no site Delboni

Cenario:Validar Login de Pacientes Delboni
Dado que esteja no site Delboni
E selecione o campo Resultados de exames
E realize o login
Entao devo ser redirecionada para a pagina de meus exames

Cenario:Validar Login invalido campo CIP
Dado que preencha o campo CIP INVALIDO
E faça o login no site Delboni
Entao devo ser redirecionada para a pagina do Sislu e uma msg de alerta deve ser exibida
