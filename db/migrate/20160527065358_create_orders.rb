class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :table
      t.string :status

      t.timestamps null: false
    end
  end
end
