json.array!(@member_applications) do |member_application|
  json.extract! member_application, :id, :request_type, :status, :member_id, :last_name_kanji, :first_name_kanji, :last_name_kana, :first_name_kana, :last_name_romaji, :first_name_romaji, :project_name, :partner_company_id, :reconsignment_company_name, :leader_id, :administrator_id, :work_location, :passport_no, :email_address, :email_flg, :internet_flg, :global_id, :esd_email_address, :to_acknowedger, :to_applicant, :application_date, :applicant_id, :acknowledge_date, :acknowledge_id
  json.url member_application_url(member_application, format: :json)
end
