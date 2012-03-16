class CreateRolesUsersJoin < ActiveRecord::Migration
  def up
    create_table 'roles_users', id: false do |t|
      t.column :role_id, :integer
      t.column :user_id, :integer
    end
  end

  def down
    drop_table 'roles_users'
  end
end
