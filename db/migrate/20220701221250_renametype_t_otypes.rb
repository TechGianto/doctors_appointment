class RenametypeTOtypes < ActiveRecord::Migration[7.0]
  def change
    rename_column :hospitals, :type, :types
  end
end
