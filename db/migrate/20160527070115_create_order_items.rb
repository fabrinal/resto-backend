class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.references :order, index: true, foreign_key: true
      t.references :menu, index: true, foreign_key: true
      t.integer :quantity
      t.decimal :order_price
      t.string :status

      t.timestamps null: false
    end
  end
end
