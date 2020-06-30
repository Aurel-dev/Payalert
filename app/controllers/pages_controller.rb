class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def search
    @products = Product.all
  end
  
  def home
  end

  def index
    # @pages = Page.all
  end

  def new
    # @page = Page.new
  end

  def validate
  end
  

end
