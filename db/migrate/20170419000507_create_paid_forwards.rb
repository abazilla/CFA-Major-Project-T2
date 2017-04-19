class CreatePaidForwards < ActiveRecord::Migration[5.0]
  def change
    create_table :paid_forwards do |t|
      t.references :project, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
