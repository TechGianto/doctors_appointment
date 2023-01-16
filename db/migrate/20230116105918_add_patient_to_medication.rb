class AddPatientToMedication < ActiveRecord::Migration[7.0]
  def change
    add_reference :patient_medications, :patient, null: false, foreign_key: false
  end
end
