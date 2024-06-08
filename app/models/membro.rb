class Membro < ApplicationRecord
  has_many :tarefas

  validates :email, presence: true, uniqueness: true
  validates :nome, presence: true, length: { minimum: 5 }, format: { with: URI::MailTo::EMAIL_REGEXP }
end
