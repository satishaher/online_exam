class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :attempts
	has_many :assessments, :through => :attempts
	

  def email_required?
    false
  end

  def email_changed?
    false
  end

  def name
  	"#{first_name} #{last_name}".titleize
  end

end
