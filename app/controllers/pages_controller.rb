class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def index
    @products = Product.all
  end

  def search
    @products = Product.all
  end
  
  def home
  end

  def new
    # @product = Product.new
  end


  def validate
  end
end