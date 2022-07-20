class CreateDoctorRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :doctor_ratings do |t|
      t.integer :rating
      t.text :comment
      t.references :user, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
