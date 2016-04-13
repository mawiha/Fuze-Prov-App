class Member < ActiveRecord::Base

  SERVICES = ['uc basic', 'uc core', 'uc power']

  validates :group, presence: true
  validates :uid, presence: true, uniqueness: true
  validates :service, inclusion: {in: SERVICES}

end
