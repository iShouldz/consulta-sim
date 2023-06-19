class Consultum < ApplicationRecord
  belongs_to :Medico
  belongs_to :Paciente
  validates :data, :horario, presence: true
  validate :validar_data
  validates_associated :Medico
  validates_associated :Paciente

  def validar_data
    if data.present? && data < Date.today
      errors.add(:data, "A DATA NÃO PODE SER INFERIOR A DATA DE HOJE")
    end
  end
end
