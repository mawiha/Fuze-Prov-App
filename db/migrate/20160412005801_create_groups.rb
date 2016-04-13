class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :caller_id
      t.string :voicemail
      t.string :call_record
      t.string :out_of_service

      t.timestamps null: false
    end
  end
end
