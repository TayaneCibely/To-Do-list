class Tarefa < ApplicationRecord
  belongs_to :membro

  validates :nome, presence: true, length: { minimum: 5, maximum: 50 }
  validates :descricao, length: { maximum: 140 }
  validates :finalizada, inclusion: { in: [true, false] }, presence: true
  validates :prioridade, presence: true, inclusion: { in: %w(Baixa Média Alta)}

  before_save :set_data_de_termino

  private

  def set_data_de_termino
    if finalizada_changed? && finalizada
      self.data_de_termino = Time.current
    end
  end
end
