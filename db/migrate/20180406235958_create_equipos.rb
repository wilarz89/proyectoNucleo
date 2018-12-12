class CreateEquipos < ActiveRecord::Migration[5.1]
  def change
    create_table :equipos do |t|
      t.integer :cod_equipo
      t.text :nom_equipo
      t.boolean :activo_equipo
      t.float  :porcentaje
      t.datetime :fecha_creacion
      t.belongs_to :grupos,index: true
      t.timestamps
    end

  end
end
