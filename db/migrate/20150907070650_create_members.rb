class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :password
      t.string :last_name_kanji
      t.string :first_name_kanji
      t.string :last_name_kana
      t.string :first_name_kana
      t.string :last_name_romaji
      t.string :first_name_romaji
      t.boolean :existing_flg, default: 0
      t.boolean :partner_flg, default: 0
      t.string :passport_no
      t.string :email_address
      t.string :global_id
      t.boolean :production_terminal_room_pass
      t.string :esd_email_address
      t.boolean :esd_internet_flg, default: 0
      t.boolean :internet_flg, default: 0
      t.boolean :email_flg, default: 0
      t.references :partner_company, index: true, foreign_key: true
      t.integer :leader_id
      t.string :project_name
      t.integer :administrator_id
      t.string :work_location
      t.string :reconsignment_company_name

      t.timestamps null: false
    end
  end
end
