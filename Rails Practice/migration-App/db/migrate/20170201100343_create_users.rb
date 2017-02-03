class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :email 				,	:limit=>50
    	t.srting :password				,	:limit=>20
    	t.boolean :is_active		
    	t.timestamps null: false
    end
  end
end
