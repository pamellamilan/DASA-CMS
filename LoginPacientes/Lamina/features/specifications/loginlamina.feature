#language: pt
@loginlamina

Funcionalidade: Para realizar o login na funcionalidade resultado de exames pacientes da marca Lamina
Eu como paciente Lamina
Quero visualizar meus exames no site Lamina

Cenario:Validar Login de Pacientes Lamina
Dado que esteja no site Lamina
E selecione o campo Resultados de exames
E realize o login
Entao devo ser redirecionada para a pagina de meus exames

Cenario:Validar Login invalido campo CIP
Dado que preencha o campo CIP INVALIDO
E faça o login no site Lamina
Entao devo ser redirecionada para a pagina do Sislu e uma msg de alerta deve ser exibido
