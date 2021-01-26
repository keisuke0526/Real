class Item < ApplicationRecord
  mount_uploader :image, ImgUploader
end
