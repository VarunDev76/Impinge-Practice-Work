class RecordsController < ApplicationController
  protect_from_forgery except: ['create']
  def index
    @user = User.find(params[:user_id])
    @records = @user.records
  end

  def show
    @id = params[:id]
    @record = Record.find(@id)
  end

  def edit
  end

  def new    
    @user = User.find(params[:user_id])
    @order = @user.records.new
  end

  def update
    binding.pry
  end
  def create
      binding.pry
    @user = User.find(params[:user_id])    
    @record = @user.records.new(record_params)
    if @record.valid?
        @record.save
        @msg = "Record Will Save "
        redirect_to user_records_path
    end
    # if @records && @records.size > 0
      # @records.each do|rec|
      # end
    # end
    
    # @records = Record.new(record_params)
    # value_param  = params[:value]
    # @values = []
    # value_param.each_with_index do |rec|
    #   value = Record.create(:value=>rec)
    #   @values.push(value)
    # end
    # @records.records = @values
    # @records.user = User.find(params[:user_id])
    # respond_to do |format|
    #   if @records.save
    #     format.html { redirect_to user_orders_path , notice: "Records Was Successfully Created" }        
    #   else
    #     format.html{ render new_user_order_path }
    #   end
    # end
  end

  def destroy
  end

  def record_params
    return params.require(:record).permit(:user_id, :value)
  end

end
