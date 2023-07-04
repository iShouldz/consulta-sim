Feature:
  As a medico
  I want to visualizar todos os pacientes
  So that eu saiba quem mora em Feira Nova

  Scenario: visualizar dado de um paciente
    Given Eu estou na pagina de listagem de pacientes
    When Eu procuro o paciente com nomeCompleto 'Pedro Caitano' dataDeNascimento '2000-09-14' cpf '05621812450' email 'pedro@gmail.com' cep '55715000' cidade 'FeiraNova' bairro 'Jardim Santa Rosa' logradouro 'Avenida' complemento 'Casa'
    Then Eu vejo a cidade do paciente de cpf '05621812450'

  Scenario: visualizar dado de um paciente inexistente
    Given Eu estou na pagina de listagem de pacientes
    When Eu procuro o paciente com nomeCompleto 'Pedro Caitano' dataDeNascimento '2000-09-14' cpf '05621812450' email 'pedro@gmail.com' cep '55715000' cidade 'FeiraNova' bairro 'Jardim Santa Rosa' logradouro 'Avenida' complemento 'Casa'
    And O paciente de cpf '05621812450' e deletado
    Then Eu nao encontro a cidade do paciente de cpf '05621812450'