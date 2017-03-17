class CreateAllattributes < ActiveRecord::Migration[5.0]
  def change
    create_table :allattributes do |t|
    	t.string :normal_search 
		t.integer :petDog 
		t.integer :age 
		t.text :message 
		t.string :password 
		t.integer :parent_id
		t.string :user_name
		t.date :user_born_on
		t.date :user_graduation_day
		t.date :user_month_day
		t.date :user_week_day
		t.string :user_homepage
		t.text :user_address
		t.string :user_favt_color 
		t.date :task_started_at
		t.string :product_price
		t.string :product_discount

    	t.timestamps
    end
  end
end
