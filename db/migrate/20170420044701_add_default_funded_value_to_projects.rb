class AddDefaultFundedValueToProjects < ActiveRecord::Migration[5.0]
  def change
    change_column_default :projects, :funded, false
  end
end
