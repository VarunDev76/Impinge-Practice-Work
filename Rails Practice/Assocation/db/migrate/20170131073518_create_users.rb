class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email 		,	:limit=>30
      t.string :password	,	:limit=>20

      t.timestamps null: false
    end
  end
end
