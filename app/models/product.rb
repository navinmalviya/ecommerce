class Product < ApplicationRecord
  belongs_to :product_category
  has_many :pictures, as: :pictureable
  mount_uploader :cover_image, CoverImageUploader
end
