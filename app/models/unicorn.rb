class Unicorn < ApplicationRecord
  mount_uploader :picture, PictureUploader
end
