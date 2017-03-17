class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post , limit: 10

      t.timestamps null: false
    end
  end
end
