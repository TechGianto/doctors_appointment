class CreateDoctorAvailabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :doctor_availabilities do |t|
      t.time :time_available
      t.date :week
      t.date :year
      t.json :meta_data
      t.references :doctor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
