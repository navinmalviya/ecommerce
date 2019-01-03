module ApplicationHelper
  def product_category_list
    ProductCategory.all.map {|pro_cat| [pro_cat.name, pro_cat.id]}
  end

  def product_list
    Product.all.map {|product| [product.name, product.id, product.product_category_id, product.price, product.image]}
  end

  def search
    @search = Product.params[:q]
    @products = @search.result
  end

end
