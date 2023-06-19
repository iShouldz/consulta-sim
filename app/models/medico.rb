class Medico < ApplicationRecord
  has_many :consultums, dependent: :destroy
  has_many :pacientes, through: :consultums

  validates :nomeCompleto, presence: true, numericality: false, uniqueness: false
  validates :cpf, presence: true, uniqueness: true, length: {is: 11}
  validates :crm, presence: true, uniqueness: true, length: {minimum: 6}
  validates :email, presence: true, uniqueness: true, length: {minimum: 5}
  validates :especialidade, presence: false, uniqueness: false, numericality: false
end
