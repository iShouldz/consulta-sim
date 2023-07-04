Feature:
  As a medico
  I want to remover um medico
  So that a lista de medicos fique sempre atualizada

  Scenario: remover um medico existente
    Given Eu estou na pagina de listagem dos medicos
    And o medico com nomeCompleto 'Pedro Caitano' cpf '05621812450' email 'pedroshouldz@outlook.com' especialidade 'Cardiologista' crm '333000' existe
    When Eu clico em remover o medico com crm '333000'
    Then Eu vejo uma mensagem que o medico com crm '333000' foi removido com sucesso

  Scenario: remover um medico inexistente
    Given Eu estou na pagina inicial
    When Eu clico em listar medicos do sistema
    Then Eu nao encontro o medico com crm '333000' e permaneco na pagina de listagem de medicos
