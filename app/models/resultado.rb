class Resultado < ApplicationRecord
  validates :id, numericality: true,
            uniqueness: {message:"%{value} no es único"}
  validates :enfrentamiento, presence: true,
            length: {minimum: 5}
  validates :goles_marcados,presence: true
  validates :goles_recibidos,presence: true
  validates :puntos_partido,presence: true
end
