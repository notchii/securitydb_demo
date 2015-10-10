class RenameColumnToMemberApplication < ActiveRecord::Migration
  def change
    rename_column :member_applications, :status, :status_id
  end
end
