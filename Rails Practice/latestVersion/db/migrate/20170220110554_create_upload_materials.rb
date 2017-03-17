class CreateUploadMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :upload_materials do |t|
    	t.column :picture, :binary, :limit => 20.megabyte
      	t.timestamps
    end
  end
end
