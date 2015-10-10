json.array!(@members) do |member|
  json.extract! member, :id, :password, :last_name_kanji, :first_name_kanji, :last_name_kana, :first_name_kana, :last_name_romaji, :first_name_romaji, :existing_flg, :partner_flg, :passport_no, :email_address, :global_id, :production_terminal_room_pass, :esd_email_address, :esd_internet_flg, :internet_flg, :email_flg, :partner_company_id, :leader_id, :project_name, :administrator_id, :work_location, :reconsignment_company_name
  json.url member_url(member, format: :json)
end
