class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :project

  # def self.update_project_funded_amount
  #   @project.funded_amount += @donation.amount
  #   @project.save
  # end
end