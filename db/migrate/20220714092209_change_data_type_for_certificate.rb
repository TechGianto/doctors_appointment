class ChangeDataTypeForCertificate < ActiveRecord::Migration[7.0]
  remove_column(:doctors, :certificate)
end
