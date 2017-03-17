class FormPagesController < ApplicationController
  def index
    @pages = Form_pages.all
  end

  def show
  end

  def new
    @page = Form_pages.new
  end

  def create
    @page = Form_pages.new(forms_params)
    if @page.save
      redirect_to "index"
    end
  end

  def delete
  end

  def edit
  end

  def form_params
    return params.require(:form_pages).permit(:normal_search , :petDog ,:age , :message ,:password,:parent_id,:user_name,:user_born_on,:user_graduation_day,:user_month_day,:user_week_day,:user_homepage,:user_address,:user_favt_color,:task_started_at,:product_price,:product_discount)
  end

end
