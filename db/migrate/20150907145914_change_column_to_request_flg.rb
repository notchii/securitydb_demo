class ChangeColumnToRequestFlg < ActiveRecord::Migration
  # 変更内容
  def up
    rename_column :member_applications, :request_flg, :request_type
    change_column :member_applications, :request_type, :integer, null: false
  end

  # 変更前の状態
  def down
    rename_column :member_applications, :request_type, :request_flg
    change_column :member_applications, :request_flg, :boolean, default: false
  end

end
