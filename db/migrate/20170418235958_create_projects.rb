class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :pitch
      t.integer :request_amount
      t.integer :funded_amount
      t.boolean :funded
      t.references :user, foreign_key: true
      t.integer :next_project_funded

      t.timestamps
    end
  end
end
