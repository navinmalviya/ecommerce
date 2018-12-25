module ApplicationHelper
  def product_category_list
    ProductCategory.all.map {|pro_cat| [pro_cat.name, pro_cat.id]}
  end
end
