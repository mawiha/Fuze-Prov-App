class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :uid
      t.string :first_name
      t.string :last_name
      t.string :service
      t.string :dept
      t.string :location
      t.integer :extension
      t.string :group

      t.timestamps null: false
    end
  end
end
