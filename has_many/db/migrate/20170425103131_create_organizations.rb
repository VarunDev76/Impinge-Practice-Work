class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
    	t.integer 	:user_id 
    	t.integer 	:order_id 
    	t.timestamps
    end
  end
end
