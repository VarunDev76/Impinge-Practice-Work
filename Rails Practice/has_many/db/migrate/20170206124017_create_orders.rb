class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :order_item
      t.integer :payment

      t.timestamps null: false
    end
  end
end
