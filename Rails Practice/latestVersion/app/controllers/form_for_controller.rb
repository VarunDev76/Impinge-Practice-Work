class FormForController < ApplicationController
  def index
    @articles = FormFor.all
  end

  def show
  end

  def new
    @article = FormFor.new
    # @article.build_posts
  end

  def create
    @article = FormFor.new(form_params)
    if @article.save
      redirect_to "index"
    end

  end

  def update
  end

  def delete
  end

  def form_params
    return params.require(:form_for).permit(:title , :name, :address)
  end

end
