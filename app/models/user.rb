class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :blurb, :approved, :zip, :administrator

  validates :first_name, presence:   true
  validates :last_name, presence:   true
  validates :email, presence:   true,
  									uniqueness: { case_sensitive: false }
  validates :blurb, presence:   true
  validates :zip, presence:   true

  def active_for_authentication? 
  	super && approved? 
	end 

	def inactive_message 
  	if !approved? 
   	 :not_approved 
  	else 
   	 super 
  	end 
	end
end
