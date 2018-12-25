class PicturesController < ApplicationController

  # def create 
  #   if params[:product_id]
  #     @imageable = Product.find(params[:product_id])
  #   elsif params[:prduct_category_id]
  #     @imageable = ProductCategory.find(params[:product_category_id])
  #   end

  #     @picture = @imageable.pictures.build(picture_params)
  # end

  def index
    @pictures = @pictureable.pictures
  end

  def new
    @picture = @pictureable.pictures.new
  end

  def create
    @picture = @pictureable.pictures.new(params[:picture])
    if @picture.save
      redirect_to @pictureable, notice: "Comment created."
    else
      render :new
    end
  end

private

  def load_pictureable
    resource, id = request.path.split('/')[1, 2]
    @pictureable = resource.singularize.classify.constantize.find(id)
  end

  # alternative option:
  # def load_commentable
  #   klass = [Article, Photo, Event].detect { |c| params["#{c.name.underscore}_id"] }
  #   @commentable = klass.find(params["#{klass.name.underscore}_id"])
  # end
end

end
