class CreateDoctorsQualifications < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors_qualifications do |t|
      t.references :doctor, null: false, foreign_key: true
      t.references :qualification, null: false, foreign_key: true

      t.timestamps
    end
  end
end
