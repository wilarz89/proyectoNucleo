class Equipo < ApplicationRecord
validates :cod_equipo, numericality: true,
          uniqueness: {message:"%{value} no es único"}
validates :nom_equipo,presence: true,
           length: {minimum: 5}
end
