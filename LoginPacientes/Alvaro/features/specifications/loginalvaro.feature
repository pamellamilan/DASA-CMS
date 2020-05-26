#language: pt
@loginalvaro

Funcionalidade: Para realizar o login na funcionalidade resultado de exames pacientes da marca Alvaro
Eu como paciente Alvaro
Quero visualizar meus exames no site Alvaro

Cenario:Validar Login de Pacientes Alvaro
Dado que esteja no site Alvaro
E selecione o campo Resultados de exames
E realize o login
Entao devo ser redirecionada para a pagina de meus exames

Cenario:Validar Login invalido campo CIP Alvaro
Dado que preencha o campo CIP INVALIDO
E faça o login no site Alvaro
Entao devo ser redirecionada para a pagina do Apoio com a mensagem de Acesso negado
