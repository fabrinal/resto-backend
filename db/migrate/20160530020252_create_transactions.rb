class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :order, index: true, foreign_key: true
      t.decimal :paid_amount
      t.decimal :discount
      t.string :validation_id
      t.string :status

      t.timestamps null: false
    end
  end
end
