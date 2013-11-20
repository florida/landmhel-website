class Agent < ActiveRecord::Base
  has_many :listings

  def to_s 
    return "#{first_name} #{last_name}"
  end
end
