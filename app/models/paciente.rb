class Paciente < ApplicationRecord
  has_one :endereco, dependent: :destroy
  accepts_nested_attributes_for :endereco, allow_destroy: true
  has_many :consultums, :dependent => :delete_all
  has_many :medicos, through: :consultums

  validates :cpf, presence: {message: 'POR FAVOR, DIGITE O CPF'},
            length: {is: 11, message: 'CPF PRECISA DE 11 DIGITOS'},
            format: {with: /\A\d+\z/, message: 'APENAS NÚMEROS!'}
  validates :email, format:{with: URI:: MailTo::EMAIL_REGEXP}
  validates :nomeCompleto, presence: {message: 'POR FAVOR, DIGITE SEU NOME'},
            length: {maximum: 100, message: 'TAMANHO MAXIMO: 100 CARACTERES'}

end
