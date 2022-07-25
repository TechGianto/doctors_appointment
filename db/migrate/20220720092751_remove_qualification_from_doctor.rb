class RemoveQualificationFromDoctor < ActiveRecord::Migration[7.0]
  def up
    if column_exists?(:doctors, :qualifications)
      remove_column(:doctors, :qualifications)
    end
  end

  def down
   if !column_exists?(:doctors, :qualifications)
    add_column :doctors, :qualifications, :string
   end
  end
end
