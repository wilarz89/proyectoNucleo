class CreateResultados < ActiveRecord::Migration[5.1]
  def change
    create_table :resultados do |t|
      t.integer :cod_resultado
      t.text :enfrentamiento
      t.integer :puntos_partido
      t.integer :goles_marcados
      t.integer :goles_recibidos
      t.belongs_to :equipo, index: true
      t.timestamps
    end

  end
end
