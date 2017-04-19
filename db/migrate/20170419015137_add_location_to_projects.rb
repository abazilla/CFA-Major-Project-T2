class AddLocationToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :city, :string
    add_column :projects, :country, :string
  end
end
