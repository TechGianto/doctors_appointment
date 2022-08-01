# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_22_185317) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'active_storage_attachments', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'record_type', null: false
    t.bigint 'record_id', null: false
    t.bigint 'blob_id', null: false
    t.datetime 'created_at', null: false
    t.index ['blob_id'], name: 'index_active_storage_attachments_on_blob_id'
    t.index ['record_type', 'record_id', 'name', 'blob_id'], name: 'index_active_storage_attachments_uniqueness', unique: true
  end

  create_table 'active_storage_blobs', force: :cascade do |t|
    t.string 'key', null: false
    t.string 'filename', null: false
    t.string 'content_type'
    t.text 'metadata'
    t.string 'service_name', null: false
    t.bigint 'byte_size', null: false
    t.string 'checksum'
    t.datetime 'created_at', null: false
    t.index ['key'], name: 'index_active_storage_blobs_on_key', unique: true
  end

  create_table 'active_storage_variant_records', force: :cascade do |t|
    t.bigint 'blob_id', null: false
    t.string 'variation_digest', null: false
    t.index ['blob_id', 'variation_digest'], name: 'index_active_storage_variant_records_uniqueness', unique: true
  end

  create_table 'appointments', force: :cascade do |t|
    t.datetime 'date_of_appointment'
    t.integer 'no_of_session'
    t.integer 'status'
    t.bigint 'user_id', null: false
    t.bigint 'doctor_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['doctor_id'], name: 'index_appointments_on_doctor_id'
    t.index ['user_id'], name: 'index_appointments_on_user_id'
  end

  create_table 'doctor_availabilities', force: :cascade do |t|
    t.time 'time_available'
    t.integer 'week'
    t.integer 'year'
    t.json 'meta_data'
    t.bigint 'doctor_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['doctor_id'], name: 'index_doctor_availabilities_on_doctor_id'
  end

  create_table 'doctor_ratings', force: :cascade do |t|
    t.integer 'rating'
    t.text 'comment'
    t.bigint 'user_id', null: false
    t.bigint 'doctor_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['doctor_id'], name: 'index_doctor_ratings_on_doctor_id'
    t.index ['user_id'], name: 'index_doctor_ratings_on_user_id'
  end

  create_table 'doctor_specialities', force: :cascade do |t|
    t.bigint 'doctor_id', null: false
    t.bigint 'speciality_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['doctor_id'], name: 'index_doctor_specialities_on_doctor_id'
    t.index ['speciality_id'], name: 'index_doctor_specialities_on_speciality_id'
  end

  create_table 'doctors', force: :cascade do |t|
    t.string 'hospital_address'
    t.decimal 'rate'
    t.time 'available_time'
    t.integer 'application_status', default: 0
    t.bigint 'user_id', null: false
    t.bigint 'hospital_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['hospital_id'], name: 'index_doctors_on_hospital_id'
    t.index ['user_id'], name: 'index_doctors_on_user_id'
  end

  create_table 'doctors_qualifications', force: :cascade do |t|
    t.bigint 'doctor_id', null: false
    t.bigint 'qualification_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['doctor_id'], name: 'index_doctors_qualifications_on_doctor_id'
    t.index ['qualification_id'], name: 'index_doctors_qualifications_on_qualification_id'
  end

  create_table 'hospitals', force: :cascade do |t|
    t.string 'name'
    t.string 'address'
    t.integer 'h_type', default: 0
    t.integer 'status', default: 0
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'qualifications', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'roles', force: :cascade do |t|
    t.string 'name'
    t.string 'resource_type'
    t.bigint 'resource_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['name', 'resource_type', 'resource_id'], name: 'index_roles_on_name_and_resource_type_and_resource_id'
    t.index ['resource_type', 'resource_id'], name: 'index_roles_on_resource'
  end

  create_table 'specialities', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'last_name'
    t.string 'first_name'
    t.string 'middle_name'
    t.datetime 'date_of_birth'
    t.string 'phone'
    t.text 'profile_pic'
    t.string 'address'
    t.string 'gender'
    t.string 'state'
    t.string 'nationality'
    t.string 'LGA'
    t.integer 'status', default: 1
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  create_table 'users_roles', id: false, force: :cascade do |t|
    t.bigint 'user_id'
    t.bigint 'role_id'
    t.index ['role_id'], name: 'index_users_roles_on_role_id'
    t.index ['user_id', 'role_id'], name: 'index_users_roles_on_user_id_and_role_id'
    t.index ['user_id'], name: 'index_users_roles_on_user_id'
  end

  add_foreign_key 'active_storage_attachments', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'active_storage_variant_records', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'appointments', 'doctors'
  add_foreign_key 'appointments', 'users'
  add_foreign_key 'doctor_availabilities', 'doctors'
  add_foreign_key 'doctor_ratings', 'doctors'
  add_foreign_key 'doctor_ratings', 'users'
  add_foreign_key 'doctor_specialities', 'doctors'
  add_foreign_key 'doctor_specialities', 'specialities'
  add_foreign_key 'doctors', 'hospitals'
  add_foreign_key 'doctors', 'users'
  add_foreign_key 'doctors_qualifications', 'doctors'
  add_foreign_key 'doctors_qualifications', 'qualifications'
end
