class Remove < ActiveRecord::Migration[7.0]
  def change
    remove_column :patient_medications, :user_id
  end
end
