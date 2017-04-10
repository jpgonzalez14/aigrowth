class CreatePlanta < ActiveRecord::Migration[5.0]
  def change
    create_table :planta do |t|
      t.string :nombre
      t.integer :huerta_id

      t.timestamps
    end
  end
end
