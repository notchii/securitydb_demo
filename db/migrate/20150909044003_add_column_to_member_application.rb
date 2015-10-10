class AddColumnToMemberApplication < ActiveRecord::Migration
  def change
    add_column :member_applications, :partner_flg, :boolean, default: 0
  end
end
