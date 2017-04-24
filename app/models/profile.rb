class Profile < ApplicationRecord
  belongs_to :user
  has_many :donations, through: :user
  mount_uploader :picture, PictureUploader
end
