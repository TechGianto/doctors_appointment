class RemoveProfilePicFromUser < ActiveRecord::Migration[7.0]
  def change 
    def up
      if column_exists?(:doctors, :certificate)
        remove_column(:users, :profile_pic, :text)
       end
     end
     
     def down
      if !column_exists?(:doctors, :certificate)
        add_column :users, :profile_pic, :text
       end
     end
  end
end
