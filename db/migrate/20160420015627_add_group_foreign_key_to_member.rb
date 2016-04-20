class AddGroupForeignKeyToMember < ActiveRecord::Migration
  def up
    remove_column :members, :group
    # Create group_id column that will be a foreign key to the groups table
    add_reference :members, :group, index: true, foreign_key: true
  end

  def down
    add_column :members, :group, :string
    # Remove group_id column that WAS acting as the foreign key to the groups table
    remove_column :members, :group_id
  end

end
