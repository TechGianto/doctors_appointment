class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :hospital_address
      t.decimal :rate
      t.time :available_time
      t.integer :application_status, default: 0
      t.references :user, null: false, foreign_key: true
      t.references :hospital, null: false, foreign_key: true
      t.timestamps
    end
  end
end
