class Member < ActiveRecord::Base

  belongs_to :group

  SERVICES = ['uc basic', 'uc core', 'uc power']

  validates :group, presence: true
  validates :uid, presence: true, uniqueness: true
  validates :service, inclusion: {in: SERVICES}

end
