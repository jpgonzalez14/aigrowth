class CreateReportes < ActiveRecord::Migration[5.0]
  def change
    create_table :reportes do |t|
      t.string :tipo
      t.integer :datos
      t.integer :planta_id
      t.integer :microcontrolador_id

      t.timestamps
    end
  end
end
