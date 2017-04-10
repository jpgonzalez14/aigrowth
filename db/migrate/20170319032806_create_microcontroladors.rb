class CreateMicrocontroladors < ActiveRecord::Migration[5.0]
  def change
    create_table :microcontroladors do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
