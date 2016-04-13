class Member < ActiveRecord::Base

  validates :group, presence: true
  validates :uid, presence: true, uniqueness: true

end
