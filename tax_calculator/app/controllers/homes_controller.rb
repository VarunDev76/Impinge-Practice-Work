class HomesController < ApplicationController
  def index
    # @allData = Home.all
  end

  def calculate_tax
    default_tax = 250000                                          # =>  Default Tax Present
    total_income = params[:total_income]                          # =>  Total Income
    salary_under_80c = params[:salary_under_80c]                  # =>  Salary Under 80 cent
    salary_under_80cc = params[:salary_under_80cc]                # =>  Salary Under 80 cent
    other = params[:other]                                        # =>  others
    medical_rhs = params[:medical_rhs]                            # =>  Medical Rhs
    basic_salary = params[:basic_salary]                          # =>  Basic Salary
    hra = params[:hra]                                            # =>  Hra
    home_rent = params[:home_rent]                                # =>  Home Rent
    basicSalary = (basic_salary.to_i * 50)/100                    # =>  Basic Salary 50%
    minimum = hra.to_i - (basic_salary.to_i * 10 )/ 100           # =>  Minimun Home Rent
    minimumCost = minimum.to_i * 12                                   # =>  Minimun Home Rent * 12 months
    
    calculate_tax_data = total_income.to_i - salary_under_80c.to_i - salary_under_80cc.to_i - other.to_i - medical_rhs.to_i - minimumCost.to_i
    result = calculate_tax_data - default_tax
    binding.pry
    if result >= 250000 
      first_step = result - 250000
      if first_step >= 500000
        second_step = first_step - 500000
          if second_step <= 0
            taxResult = (second_step * 20)/100
            taxSlab = "20%"
          end
      end
      taxResult = (first_step * 5) /100
      taxSlab = "5%"
    end
    # elsif result >= 500000
    #   first_step = result - 250000
    #   taxResult = (first_step * 20) /100
    #   taxSlab = "5%"
    # if result >= 250000 && result <= 500000
    #   taxResult  = (result * 5)/100
    #   taxResult = "#{taxResult} Rs"
    #   taxSlab = "5%" 
    # elsif result >= 500001 && result <= 1000000
    #   taxResult = (result * 20)/100
    #   taxResult = "#{taxResult} Rs"
    #   taxSlab = "20%"  
    # elsif result >= 1000001 
    #   taxResult = (result * 30)/100
    #   taxResult = "#{taxResult} Rs"
    #   taxSlab = "30%" 
    # elsif result <= 249999
    #   taxResult = " Nil"
    #   taxSlab = " No "
    # end
    # render json: {taxResult: taxResult , taxSlab: taxSlab , homeRent: home_rent , basicSalary: basicSalary , minimumValue: minimum }.to_json
  end

  def show
  end

  def new
  end

  def edit
  end

  def destroy
  end

end
