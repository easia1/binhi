class Image < ApplicationRecord
  belongs_to :plant
  mount_uploader :file_path, ImgUploader

end
