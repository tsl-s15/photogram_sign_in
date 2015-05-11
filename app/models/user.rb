class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def photos
    return Photo.where(:user_id => self.id )
  end


  def full_info
    return "#{self.name} - #{self.email}"
  end
end
