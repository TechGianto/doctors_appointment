class ChangeDataTypeForCertificate < ActiveRecord::Migration[7.0]
  def change
    def up
      change_table :doctors do |t|
        t.change :certificate, :string
      end
    end
  
    def down
      change_table :products do |t|
        t.change :certificate, :active_storage_blobs
      end
    end
  end
end
