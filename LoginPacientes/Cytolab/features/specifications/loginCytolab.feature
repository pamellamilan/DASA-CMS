#language: pt
@logincytolab

Funcionalidade: Para realizar o login na funcionalidade resultado de exames pacientes da marca Cytolab
Eu como paciente Cytolab
Quero visualizar meus exames no site Cytolab

Cenario:Validar Login de Pacientes Cytolab
Dado que esteja no site Cytolab
E selecione o campo Resultados de exames
E realize o login
Entao devo ser redirecionada para a pagina de meus exames

Cenario:Validar Login invalido campo CIP
Dado que preencha o campo CIP INVALIDO
E faça o login no site Cytolab
Entao devo ser redirecionada para a pagina do Sislu e uma msg de alerta deve ser exibida
