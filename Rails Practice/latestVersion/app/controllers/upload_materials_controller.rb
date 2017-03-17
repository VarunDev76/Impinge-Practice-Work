class UploadMaterialsController < ApplicationController
  def index
    @selects = UploadMaterial.new(Base64.decode64(string))
  end

  def show
    @select = UploadMaterial.find(params[:id])
    send_data @select.image, :type => "image/png"
  end

  def edit
  end

  def new
    @select = UploadMaterial.new
  end

  def create
    uploaded_io = params[:upload_material][:picture]
    # binding.pry
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      @file = file.write(uploaded_io.read)
    end     
    redirect_to upload_material_path(:id)
  end

  def delete
  end

  def upload_params
    return params.require(:upload_material).permit(:picture)
  end

end
