class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
    	t.integer 		:total_income
    	t.integer 		:salary_under_80c
    	t.integer 		:salary_under_80cc
    	t.integer 		:other
    	t.integer 		:medical_rhs
    	t.integer 		:hra
      t.timestamps
    end
  end
end
