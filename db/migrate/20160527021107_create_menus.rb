class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.decimal :price
      t.references :category, index: true, foreign_key: true
      t.string :status

      t.timestamps null: false
    end
  end
end
