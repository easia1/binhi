class Image < ApplicationRecord
  belongs_to :plant
  mount_uploader :image, ImgUploader

end
