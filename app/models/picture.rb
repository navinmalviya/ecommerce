class Picture < ApplicationRecord
  belongs_to :pictureable, polymorphic: true
  mount_uploader :cover_image, CoverImageUploader
end
