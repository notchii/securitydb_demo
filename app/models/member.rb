class Member < ActiveRecord::Base
  belongs_to :partner_company

  scope :existing, -> { where(deleted_flg: 'false') }
  scope :shain, -> { where(partner_flg: 'false') }
  scope :partner, -> { where(partner_flg: 'true') }
  scope :partner_belongs_to, ->(partner_company) { where(partner_flg: 'true', partner_company: partner_company).order(name: :asc) }

  def name_kanji
    return last_name_kanji + ' ' + first_name_kanji
  end

  def name_kana
    return last_name_kana + ' ' + first_name_kana
  end

  def name_romaji
    return last_name_romaji + ' ' + first_name_romaji
  end

end
