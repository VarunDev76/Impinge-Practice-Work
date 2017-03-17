class ChkController < ApplicationController

	def index
		# binding.pry
		@data = params
    # @search_name = params[:q]
    # @petDog = params[:pet_Dog]
    # @age = params[:age]
    # @messages = params[:message]
    # @password = params[:password]
    # @parent_id = params[:parent_id]
    # @user_name = params[:user_name]
    # @user_born_on = params[:user_born_on]
    # @user_gradution_day = params[:user_gradution_day]
    # @all = params[:q][:pet_Dog][:age]
  end

  def show
  end

  def new
    @page = Chk.new
  end

  def create
    @page = Chk.new(forms_params)
    if @page.save
      redirect_to "index"
    end
  end

  def delete
  end

  def edit
  end

  # def form_params
  #   return params.require(:chk)(:q , :pet_Dog ,:age , :message ,:password,:parent_id,:user_name,:user_born_on,:user_graduation_day,:user_month_day,:user_week_day,:user_homepage,:user_address,:user_favt_color,:task_started_at,:product_price,:product_discount)
  # end

end
