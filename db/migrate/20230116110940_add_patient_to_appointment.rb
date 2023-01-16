class AddPatientToAppointment < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments, :patient, null: false, foreign_key: false
  end
end
