json.extract! paciente, :id, :nomeCompleto, :dataDeNascimento, :cpf, :email, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
