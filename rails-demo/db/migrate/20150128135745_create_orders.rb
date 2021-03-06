class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :number
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :orders, :users
  end
end
