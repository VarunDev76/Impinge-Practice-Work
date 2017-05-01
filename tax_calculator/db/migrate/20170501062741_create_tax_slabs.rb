class CreateTaxSlabs < ActiveRecord::Migration[5.0]
  def change
    create_table :tax_slabs do |t|
    	t.string 	:rate 
    	t.string 	:start
    	t.string 	:end
      t.timestamps
    end
  end
end
