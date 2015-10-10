class ChangeColumnToMember < ActiveRecord::Migration
  def change
    add_column :members, :deleted_flg, :boolean, default: 0
    remove_column :members, :existing_flg
  end
end
