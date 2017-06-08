class CreateDeals < ActiveRecord::Migration[5.1]
  def change
    create_table :deals do |t|
      t.integer :proveedor
      t.integer :cliente

      t.timestamps
    end
  end
end
