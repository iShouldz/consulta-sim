class CreatePacientes < ActiveRecord::Migration[7.0]
  def change
    create_table :pacientes do |t|
      t.string :nomeCompleto
      t.date :dataDeNascimento
      t.string :cpf
      t.string :email

      t.timestamps
    end
  end
end
