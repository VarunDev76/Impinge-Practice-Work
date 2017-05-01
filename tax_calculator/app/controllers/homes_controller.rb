class HomesController < ApplicationController
  def index
    # @allData = Home.all
  end

  def calculate_tax
    total_income = params[:total_income]
    salary_under_80c = params[:salary_under_80c]
    salary_under_80cc = params[:salary_under_80cc]
    other = params[:other]
    medical_rhs = params[:medical_rhs]
    result = total_income.to_i - salary_under_80c.to_i - salary_under_80cc.to_i - other.to_i - medical_rhs.to_i
    # binding.pry
    if result >= 300000 && result <= 500000
      taxResult  = (result * 5)/100
      taxResult = "#{taxResult} Rs"
      taxSlab = "5%" 
    elsif result > 500000 && result < 1000000
      taxResult = (result * 20)/100
      taxResult = "#{taxResult} Rs"
      taxSlab = "20%"  
    elsif result > 1000000 
      taxResult = (result * 30)/100
      taxResult = "#{taxResult} Rs"
      taxSlab = "30%" 
    elsif result < 300000
      taxResult = " Safe"
      taxSlab = " Safe"
    end
    render json: {taxResult: taxResult , taxSlab: taxSlab}.to_json
  end

  def show
  end

  def new
    @tax = Home.new
  end
  def create
    # binding.pry
    @tax = Home.new(tax_params)
    # if @tax.save
      redirect_to new_home_url
    # end
  end

  def edit
  end

  def destroy
  end

  def tax_params
    params.require(:home).permit(:total_income , :salary_under_80c , :salary_under_80cc , :other  , :medical_rhs , :hra )
  end

end
