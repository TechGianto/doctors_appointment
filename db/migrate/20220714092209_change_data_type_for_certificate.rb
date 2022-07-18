class ChangeDataTypeForCertificate < ActiveRecord::Migration[7.0]
    def up
      if column_exists?(:doctors, :certificate)
        remove_column(:doctors, :certificate)
      end
    end

    def down
     if !column_exists?(:doctors, :certificate)
      add_column :doctors, :certificate, :string
     end
    end
end
