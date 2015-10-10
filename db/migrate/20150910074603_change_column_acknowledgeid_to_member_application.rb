class ChangeColumnAcknowledgeidToMemberApplication < ActiveRecord::Migration
  def change
    rename_column :member_applications, :acknowledge_id, :acknowledger_id
  end
end
