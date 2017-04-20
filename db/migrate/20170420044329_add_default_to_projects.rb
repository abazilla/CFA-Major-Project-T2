class AddDefaultToProjects < ActiveRecord::Migration[5.0]
  def up
    change_column_default :projects, :funded_amount, 0
  end
end
