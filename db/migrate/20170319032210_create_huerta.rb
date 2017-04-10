class CreateHuerta < ActiveRecord::Migration[5.0]
  def change
    create_table :huerta do |t|
      t.string :name
      t.integer :type
      t.integer :user_id

      t.timestamps
    end
  end
end
