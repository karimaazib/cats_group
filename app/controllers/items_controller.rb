class ItemsController < ApplicationController


  def index
    @items = Item.all
    
  end

  def show
    @item_searched = Item.find(params[:id])
  
  end
 
  def update
  end

  def destroy
  end

  def new
    @items = Item.new
  end

  def edit
  end
  def create
    Item.create(title: params["item"]["title"], description: params["item"]["description"], price: params["item"]["price"], image: params["item"]["file"])
    redirect_to products_url
  end
end
