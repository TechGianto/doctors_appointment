class CreateHospitals < ActiveRecord::Migration[7.0]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :address
      t.integer :h_type, default:0
      t.integer :status, default:0

      t.timestamps
    end
  end
end
