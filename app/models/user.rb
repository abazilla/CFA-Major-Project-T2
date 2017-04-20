class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :projects
  has_many :donations
  has_one :profile, :dependent => :delete

  after_create :create_profile

  def create_profile
    Profile.create(user_id: id)
  end
end
