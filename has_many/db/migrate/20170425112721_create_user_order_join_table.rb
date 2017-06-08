class CreateUserOrderJoinTable < ActiveRecord::Migration[5.0]
  def change
  	create_table :users_orders , id: false do |t|
      t.integer :user_id
      t.integer :order_id
    end
  end
end
