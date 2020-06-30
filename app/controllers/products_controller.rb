class ProductsController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :home ]

def index 
  @seller   = nil
  @category = nil
  @brand    = nil
  
  if params[:query].present?
    @products = Product.where('name ILIKE? ', "%#{params[:query]}%")
  elsif params[:product_filter].present?
    @seller   = params[:product_filter][:seller]
    @category = params[:product_filter][:category]
    @brand    = params[:product_filter][:brand]

    @shop = Shop.find_by(name: @seller)
    @products = Product.where(category_name: @category).where(brand: @brand).where(shop_id:@shop.id)
  else
    @products = Product.all
  end
end


def new
  @product = Product.new
end
def show 
  @product = Product.find(params[:id])
  @paylert = Paylert.new
end
def create
  @product = Product.new(product_params)
    if @product.save
      redirect to @product
    else
      render :new
    end
end

def edit
end

def destroy
  @product.destroy
end

private

  def find_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.requis(:product).permit(:name, :description, :photo)
  end
end