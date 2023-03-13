class CreateCalendarInvites < ActiveRecord::Migration[7.0]
  def change
    create_table :calendar_invites do |t|
      t.references :doctor, null: false, foreign_key: true
      t.integer :status, default: 1, null: false
      t.string :provider, null: false
      t.string :external_reference_id, null: true
      t.json :metadata

      t.timestamps
    end
  end
end
