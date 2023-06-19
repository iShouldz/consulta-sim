class Endereco < ApplicationRecord
  belongs_to :Paciente

  validates :cep, presence: true, length: {is: 8}
  validates :cidade, presence: true, length: {minimum: 3, too_short: "%{count} Minimo de caracteres",
                                              maximum: 50, too_long: "%{count} Maximo de caracteres"}
  validates :bairro, presence: true, length: {minimum: 3, too_short: "%{count} Minimo de caracteres",
                                              maximum: 20, too_long: "%{count} Maximo de caracteres"}
  validates :logradouro, presence: true, length: {minimum: 3, too_short: "%{count} Minimo de caracteres",
                                                  maximum: 60, too_long: "%{count} Maximo de caracteres"}
  validates :complemento, length: {maximum: 50, too_long: "%{count} maximo de caracteres"}
end
