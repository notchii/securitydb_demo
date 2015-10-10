class Authority < ActiveRecord::Base
  belongs_to :user
  enum authority: {admin: 0, shonin: 1}
end
