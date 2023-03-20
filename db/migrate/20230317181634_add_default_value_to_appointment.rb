class AddDefaultValueToAppointment < ActiveRecord::Migration[7.0]
  def up
    change_table :appointments do |t|
      t.change :no_of_session, :integer, :default => 1
      t.change :status, :integer, :default => 1
    end
  end

  def down 
    change_table :appointments do |t|
      t.change :no_of_session, :integer
      t.change :status, :integer
    end
  end
end
