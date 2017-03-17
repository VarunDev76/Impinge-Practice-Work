class CreateFormFors < ActiveRecord::Migration[5.0]
  def change
    create_table :form_fors do |t|
    	t.string :title
    	t.string :name
    	t.text :address
      t.timestamps
    end
  end
end
