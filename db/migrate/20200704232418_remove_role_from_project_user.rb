class RemoveRoleFromProjectUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :project_users, :role, :integer
  end
end
