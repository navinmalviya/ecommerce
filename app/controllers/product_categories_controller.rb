class ProductCategoriesController < ApplicationController
  def new
    @product_category = ProductCategory.new
  end

  def edit
    @product_category = ProductCategory.find(params[:id])
  end

  def show
    @product_category = ProductCategory.find(params[:id])
  end

  def create
    @product_category = ProductCategory.new(product_cat_params)
    @product_category.save 

    redirect_to @product_category
  end

  def  update
    @product_category = ProductCategory.find(params[:id])
    if @product_category.update(product_cat_params)
      redirect_to @product_category
    else
      render 'edit'
    end
  end

  def index
    @product_categories = ProductCategory.all
  end

  def destroy
    @product_category = ProductCategory.find(params[:id])
    @product_category.destroy
 
    redirect_to product_categories_path
  end

  def get_products
    @products = Product.all
    @products.each do |el|
      if el.price < 100
        @product = el
      end
    end
  end

private
  def product_cat_params
    params.require(:product_categories).permit(:name, :description, :image)
  end
end
