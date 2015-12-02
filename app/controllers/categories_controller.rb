class CategoriesController < ApplicationController
  before_action :authenticate_speaker!, except: :show

  def new
    @category = Category.new

  end

  def show
    @category = Category.find(params[:id])
    @messages = @category.messages.paginate(page: params[:page], per_page: 4)
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "category was saved successfully"
      redirect_to messages_path
    else
      render 'new'
    end
  end

  private
  def category_params
    params.require(:category).permit(:name)

  end

end
