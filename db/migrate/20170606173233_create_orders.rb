class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :cliente
      t.integer :proveedor
      t.text :descripcion
      t.text :nota
      t.string :estado

      t.timestamps
    end
  end
end
