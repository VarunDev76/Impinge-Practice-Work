class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
    	t.integer 	:user_id 
    	t.string  	:order_name
    	t.string 	:order_description
      t.timestamps
    end
  end
end
