class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :user, foreign_key: true
      t.string :codigo
      t.string :nombre
      t.text :descripcion
      t.integer :precio
      t.string :estado

      t.timestamps
    end
  end
end
