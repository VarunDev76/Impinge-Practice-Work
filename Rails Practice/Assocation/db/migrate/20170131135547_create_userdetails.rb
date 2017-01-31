class CreateUserdetails < ActiveRecord::Migration
  def change
    create_table :userdetails do |t|
      t.string :name
      t.string :address

      t.timestamps null: false
    end
  end
end
