class ProductCategory < ApplicationRecord
  has_many :products
  has_many :images, as: :imageable
  mount_uploader :image, CoverImageUploader
end
