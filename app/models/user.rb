class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  validates :userid, presence: true, uniqueness: true

  has_many :authorities

  def has_authority?(auth_name)
    self.try(:authorities).map(&:authority).include?(auth_name)
  end

end
