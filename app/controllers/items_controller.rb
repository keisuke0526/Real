class ItemsController < ApplicationController

  def index
    @items = Item.all.order('created_at DESC').limit(8)
  end

  def indexInner
    @items = Item.paginate(page: params[:page], per_page: 16).order('created_at DESC')
  end

  def registrationSelection
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if  @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
    @items = Item.all.order('created_at DESC')
  end

  def destroy
    item = Item.find(params[:id])
    if item.destroy
      redirect_to root_path, notice: "削除しました"
    else
      redirect_to item_path(@item.id), notice: "削除できませんでした"
    end
  end

  def edit
    @item = Item.find_by(id: params[:id])
  end

  def update
    @item = Item.find_by(id: params[:id])
    if @item.update_attributes(item_params)
      redirect_to root_path
    else
      render action: :edit
    end
  end


  private
    def item_params
      params.require(:item).permit(:title, :image, :item_explanation)
    end
end
