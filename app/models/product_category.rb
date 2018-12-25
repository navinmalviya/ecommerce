class ProductCategory < ApplicationRecord
  has_many :products
  has_many :pictures, as: :imageable
  mount_uploader :cover_image, CoverImageUploader
end
