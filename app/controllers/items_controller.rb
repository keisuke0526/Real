class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
  end

  private
 def post_params
  params.require(:post).permit(:title, :image, :text, :item_explanation)
 end
end
