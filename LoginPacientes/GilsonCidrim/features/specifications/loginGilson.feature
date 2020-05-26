#language: pt
@logingilson

Funcionalidade: Para realizar o login na funcionalidade resultado de exames pacientes da marca Gilson Cidrim
Eu como paciente
Quero visualizar meus exames no site Gilson Cidrim

Cenario:Validar Login de Pacientes Gilson Cidrim
Dado que esteja no site Gilson Cidrim
E selecione o campo Resultados de exames
E realize o login
Entao devo ser redirecionada para a pagina de meus exames

Cenario:Validar Login invalido campo Senha
Dado que preencha o campo Senha INVALIDO
E faça o login no Site Gilson
Entao devo ser redirecionada para a pagina do Sislu e uma msg de alerta deve ser exibido
