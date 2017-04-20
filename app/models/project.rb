class Project < ApplicationRecord
  belongs_to :user
  has_many :donations
  mount_uploader :picture, PictureUploader
end
