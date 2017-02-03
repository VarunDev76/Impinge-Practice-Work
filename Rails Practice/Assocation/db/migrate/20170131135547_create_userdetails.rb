class CreateUserdetails < ActiveRecord::Migration
  def change
    create_table :userdetails do |t|
      t.integer :user_id ,	:foreign_key: true
      t.string :name 	,	:limit=>60
      t.string :address ,	:limit=>60

      t.timestamps null: false
    end
  end
end
