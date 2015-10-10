class CreateMemberApplications < ActiveRecord::Migration
  def change
    create_table :member_applications do |t|
      t.boolean :request_flg, default: 0
      t.integer :status
      t.references :member, index: true, foreign_key: true
      t.string :last_name_kanji
      t.string :first_name_kanji
      t.string :last_name_kana
      t.string :first_name_kana
      t.string :last_name_romaji
      t.string :first_name_romaji
      t.string :project_name
      t.references :partner_company, index: true, foreign_key: true
      t.string :reconsignment_company_name
      t.integer :leader_id
      t.integer :administrator_id
      t.string :work_location
      t.string :passport_no
      t.string :email_address
      t.boolean :email_flg, default: 0
      t.boolean :internet_flg, default: 0
      t.string :global_id
      t.string :esd_email_address
      t.text :to_acknowedger
      t.text :to_applicant
      t.datetime :application_date
      t.integer :applicant_id
      t.datetime :acknowledge_date
      t.integer :acknowledge_id

      t.timestamps null: false
    end
  end
end
