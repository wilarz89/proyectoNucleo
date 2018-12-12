class Grupo < ApplicationRecord
  validates :cod_tipo_equipo,numericality: true,
            uniqueness: {message:"%{value} no es único"}
  validates :nom_tipo_equipo,presence: true,
            length: {minimum: 5}
  validates :descripcion,presence: true,
            length: {minimum: 10}

end
