class Product < ApplicationRecord
  belongs_to :product_category
  has_many :images, as: :imageable
  mount_uploader :image, CoverImageUploader
  accepts_nested_attributes_for :images
end
