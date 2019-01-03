class WelcomeController < ApplicationController
  def index
    @search = Product.search(params[:q])
    @products = @search.result
  end
end
