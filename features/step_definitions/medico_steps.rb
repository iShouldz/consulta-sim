Given('Eu estou na pagina de listagem dos medicos') do
  visit '/medicos'
  expect(page).to have_current_path('/medicos')
end

Given('o medico com nomeCompleto {string} cpf {string} email {string} especialidade {string} crm {string} existe') do |nomeCompleto, cpf, email, especialidade, crm|
  visit '/medicos/new'
  fill_in 'medico[nomeCompleto]', :with => nomeCompleto
  fill_in 'medico[cpf]', :with => cpf
  fill_in 'medico[email]', :with => email
  fill_in 'medico[especialidade]', :with => especialidade
  fill_in 'medico[crm]', :with => crm
  click_button 'Create Medico'
  expect(page).to have_content(crm)
end

When('Eu clico em remover o medico com crm {string}') do |crm|
  expect(page).to have_content(crm)
  click_button 'Destroy this medico'
end

Then('Eu vejo uma mensagem que o medico com crm {string} foi removido com sucesso') do |crm|
  expect(page).to have_no_content(crm)
  expect(page).to have_content("Medico was successfully destroyed.")
  expect(page).to have_current_path('/medicos')
end


Given('Eu estou na pagina inicial')do
  visit '/'
  expect(page).to have_current_path('/')
end

When('Eu clico em listar medicos do sistema') do
  click_link "listarMedico"
  expect(page).to have_content("Medicos")
  expect(page).to have_current_path('/medicos')
end

Then('Eu nao encontro o medico com crm {string} e permaneco na pagina de listagem de medicos') do |crm|
  expect(page).to have_no_content(crm)
  expect(page).to have_current_path('/medicos')
end
