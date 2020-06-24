class ProductsController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :home ]

def index 
  if params[:query].present?
     @products = Product.where(name: params[:query])
  else
     @products = Product.all
  end
end

def new
    @product = Product.new
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