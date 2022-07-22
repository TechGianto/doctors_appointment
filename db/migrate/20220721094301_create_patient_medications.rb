class CreatePatientMedications < ActiveRecord::Migration[7.0]
  def change
    create_table :patient_medications do |t|
      t.string :medication_name
      t.integer :dose
      t.interval :dosage
      t.integer :no_of_days
      t.integer :status, default: 1 
      t.references :user, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
