class Membro < ApplicationRecord
  has_many :tarefas, dependent: :destroy

  validates :nome, presence: true, length: { minimum: 5 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
