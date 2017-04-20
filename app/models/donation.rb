class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :project

  # def self.update_project_funded_amount(...)
  #   @project.funded_amount += @donation.amount
  #   @project.save
  # end

  # def funded
  #   check if the project funded_amount >= project requested_amount
  #   if it is, set the funded flag from false to true
  #   send an email to the project owner
  #   make the funded flag clickable, linking to the paid forward section
  # end
end