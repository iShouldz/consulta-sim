require "test_helper"

class ConsultumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'Criando consulta com dados validos' do
    paciente = Paciente.new nomeCompleto: 'Pedro Caitano', dataDeNascimento: "2000-09-14",
                            cpf: "05621812450", email: "pedroshouldz@outlook.com"
    assert paciente.save

    medico = Medico.new nomeCompleto: 'Pedro Caitano', cpf: '05621812450', email: 'pedro@gmail.com',
                        especialidade: 'Cardiologista', crm: '145000'
    assert medico.save

    consulta = Consultum.new data: DateTime.now, horario: '2000-01-01 00:12:00',
                             Paciente_id: paciente.id, Medico_id: medico.id
    assert consulta.save
  end

  test 'Criando consulta sem dados validos' do
    paciente = Paciente.new nomeCompleto: 'Pedro Caitano', dataDeNascimento: "2000-09-14",
                            cpf: "05621812450", email: "pedroshouldz@outlook.com"
    assert paciente.save

    medico = Medico.new nomeCompleto: 'Pedro Caitano', cpf: '05621812450', email: 'pedro@gmail.com',
                        especialidade: 'Cardiologista', crm: '145000'
    assert medico.save

    consulta = Consultum.new data: DateTime.yesterday, horario: '2000-01-01 00:12:00',
                             Paciente_id: paciente.id, Medico_id: medico.id
    assert_not consulta.save
  end
end
