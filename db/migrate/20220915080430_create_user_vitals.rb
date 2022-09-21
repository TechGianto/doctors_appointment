class CreateUserVitals < ActiveRecord::Migration[7.0]
  def change
    create_table :user_vitals do |t|
      t.string :blood_pressure, default: "N/A" 
      t.float :weight, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
