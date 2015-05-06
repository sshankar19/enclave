class Member < ActiveRecord::Base
  ROLES = [
    :applicant,
    :member,
    :dude,
    :admin
  ]
  extend Enumerize
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  enumerize :role, in: ROLES, default: :applicant

  scope :applicants, -> { where(role: 'applicant') }
  default_scope { where("role <> 'applicant'") }

  def full_name
    "#{first_name} #{last_name}"
  end

  def active_for_authentication?
    return false if role.applicant?
    super
  end
end
