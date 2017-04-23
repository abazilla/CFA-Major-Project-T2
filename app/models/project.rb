class Project < ApplicationRecord
  belongs_to :user
  has_many :donations
  mount_uploader :picture, PictureUploader

  validate :picture_size
  validates :title, presence: true, length: { minimum: 2 }

  private

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end

  def self.search(params)
    projects = Project.where("title like ? or pitch like ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
    projects
  end
end
