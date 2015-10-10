class RenameColumnToMemberApplication2 < ActiveRecord::Migration
  def change
    rename_column :member_applications, :status_id, :status
  end
end
