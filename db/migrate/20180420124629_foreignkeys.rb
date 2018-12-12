class Foreignkeys < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :equipos, :grupos, on_delete: :cascade, column: :id
    add_foreign_key :resultados, :equipos, on_delete: :cascade,column: :id

  end
end
