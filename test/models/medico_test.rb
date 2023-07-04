require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'salvar medico com dados validos' do
    medico = Medico.new nomeCompleto: 'Pedro Caitano', cpf: '05621812450', email: 'pedro@gmail.com',
                        especialidade: 'Cardiologista', crm: '145000'
    assert medico.save
  end

  test 'salvar medico com crm vazio' do
    medico = Medico.new nomeCompleto: 'Pedro Caitano', cpf: '05621812450', email: 'pedro@gmail.com',
                        especialidade: 'Cardiologista'
    assert_not medico.save
  end
end
