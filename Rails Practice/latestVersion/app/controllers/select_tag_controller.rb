class SelectTagController < ApplicationController
  def index
    @selects = SelectTag.all
    byebug
  end

  def show
  end

  def new
    @select = SelectTag.new
  end

  def create
    @select = SelectTag.new(select_params)
    if @select.save
      redirect_to "index"      
    end
  end

  def delete
  end

  def edit
  end

  def select_params
    return params.require(:select_tag).permit(:name)
  end

end
