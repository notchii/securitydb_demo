class MemberApplication < ActiveRecord::Base
  has_one :member
  belongs_to :partner_company
  belongs_to :leader, class_name: 'Member'
  belongs_to :administrator, class_name: 'Member'
  belongs_to :applicant, class_name: 'Member'
  belongs_to :acknowledger, class_name: 'Member'

  enum request_type: {shinki: 0, koshin: 1, sakujo: 2}
  enum status: {shitagaki: 0, shoninmachi: 1, sagyochu: 2, hishonin: 3, kanryo: 4}

  def name_kanji
    return last_name_kanji + ' ' + first_name_kanji
  end

  def name_kana
    return last_name_kana + ' ' + first_name_kana
  end

  def name_romaji
    return last_name_romaji + ' ' + first_name_romaji
  end


  # FIXME: before_saveのONオプションが効かない
  before_save :set_applicant_info#, :if => params[:action
  before_save :set_acknowledge_info#, :on => :acknowledge

  private

  def set_applicant_info
    # TODO: 申請者をログインユーザにする
    self.applicant = Member.shain.first
    self.application_date = DateTime.now
  end

  def set_acknowledge_info
    # TODO: 承認者をログインユーザにする
    self.acknowledger = Member.shain.last
    self.acknowledge_date = DateTime.now
  end

end
