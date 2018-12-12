class CreateTipoEquipos < ActiveRecord::Migration[5.1]
  def change
    create_table :grupos do |t|
      t.integer :cod_tipo_equipo
      t.text :nom_tipo_equipo
      t.boolean :activo_tipo_equipo
      t.datetime :fecha_creacion
      t.text :descripcion

      t.timestamps
    end
  end
end
