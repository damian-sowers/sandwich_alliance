class Membership < ActiveRecord::Base
  attr_accessible :name, :email, :blurb
  
  validates :name, presence:   true
  validates :email, presence:   true,
  									uniqueness: { case_sensitive: false }
  validates :blurb, presence:   true							
                    
end
