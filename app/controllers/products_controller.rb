class ProductsController < ApplicationController
def index 
    @products = Product.all
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
    params.requis(:product).permit(:name, :description)
  end
end