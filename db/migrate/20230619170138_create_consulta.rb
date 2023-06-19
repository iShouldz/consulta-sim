class CreateConsulta < ActiveRecord::Migration[7.0]
  def change
    create_table :consulta do |t|
      t.date :data
      t.time :horario
      t.references :Medico, null: false, foreign_key: true
      t.references :Paciente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
