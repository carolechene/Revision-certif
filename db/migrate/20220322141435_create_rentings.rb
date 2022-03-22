class CreateRentings < ActiveRecord::Migration[6.1]
  def change
    create_table :rentings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :flat, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.string :status, default: "Pending"

      t.timestamps
    end
  end
end
