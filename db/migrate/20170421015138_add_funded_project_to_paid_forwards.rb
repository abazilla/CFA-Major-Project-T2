class AddFundedProjectToPaidForwards < ActiveRecord::Migration[5.0]
  def change
    add_column :paid_forwards, :funded_project, :integer
  end
end
