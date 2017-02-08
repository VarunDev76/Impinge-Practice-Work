class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :user_id
      t.string :value

      t.timestamps null: false
    end
  end
end
