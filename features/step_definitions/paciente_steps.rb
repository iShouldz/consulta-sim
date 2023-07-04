Given("Eu estou na pagina de listagem de pacientes") do
  visit '/pacientes'
  expect(page).to have_current_path('/pacientes')
end

When('Eu procuro o paciente com nomeCompleto {string} dataDeNascimento {string} cpf {string} email {string} cep {string} cidade {string} bairro {string} logradouro {string} complemento {string}') do |nomeCompleto, dataDeNascimento,cpf, email, cep, cidade, bairro, logradouro, complemento|
  visit '/pacientes/new'
  fill_in 'paciente[nomeCompleto]', :with => nomeCompleto
  fill_in 'paciente[dataDeNascimento]', :with => dataDeNascimento
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  fill_in 'paciente[endereco_attributes][cep]', :with => cep
  fill_in 'paciente[endereco_attributes][cidade]', :with => cidade
  fill_in 'paciente[endereco_attributes][bairro]', :with => bairro
  fill_in 'paciente[endereco_attributes][logradouro]', :with => logradouro
  fill_in 'paciente[endereco_attributes][complemento]', :with => complemento
  click_button 'Create Paciente'
  expect(page).to have_content(cpf)
end

Then('Eu vejo a cidade do paciente de cpf {string}') do |cpf|
  expect(page).to have_content(cpf)
end


When('O paciente de cpf {string} e deletado') do |cpf|
  click_button 'Destroy this paciente'
  expect(page).to have_no_content(cpf)
end

Then('Eu nao encontro a cidade do paciente de cpf {string}') do |cpf|
  expect(page).to have_no_content(cpf)
end
