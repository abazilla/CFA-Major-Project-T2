class AddDefaultToProfile < ActiveRecord::Migration[5.0]
  def up
    change_column_default :profiles, :total_donations, 0
  end
end
