class RemoveProfilePicFromUser < ActiveRecord::Migration[7.0]
  def change 
    def up
      if column_exists?(:users, :profile_pic)
        remove_column(:users, :profile_pic, :text)
       end
     end
     
     def down
      if !column_exists?(:users, :profile_pic)
        add_column :users, :profile_pic, :text
       end
     end
  end
end
