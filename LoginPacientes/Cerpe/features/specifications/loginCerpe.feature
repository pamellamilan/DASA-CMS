#language: pt
@logincerpe

Funcionalidade: Para realizar o login na funcionalidade resultado de exames pacientes da marca Cerpe
Eu como paciente Cerpe
Quero visualizar meus exames no site Cerpe

Cenario:Validar Login de Pacientes Cerpe
Dado que esteja no site Cerpe
E selecione o campo Resultados de exames
E realize o login
Entao devo ser redirecionada para a pagina de meus exames

Cenario:Validar Login invalido campo CIP
Dado que preencha o campo CIP INVALIDO
E faça o login no site Cerpe
Entao devo ser redirecionada para a pagina do Sislu e uma msg de alerta deve ser exibida
