class CreateSelectTags < ActiveRecord::Migration[5.0]
  def change
    create_table :select_tags do |t|
    	t.string :name
    	t.timestamps
    end
  end
end
