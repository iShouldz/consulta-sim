require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'Cadastrar paciente invalido' do
    paciente = Paciente.new
    assert_not paciente.save
  end

  test 'Cadastrar paciente com dados validos' do
    paciente = Paciente.new nomeCompleto: 'Pedro Caitano', dataDeNascimento: "2000-09-14",
                            cpf: "05621812450", email: "pedroshouldz@outlook.com"
    assert paciente.save
  end
end
