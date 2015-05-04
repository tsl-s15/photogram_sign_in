class User < ActiveRecord::Base

  def photos
    return Photo.where(:user_id => self.id )
  end


  def full_info
    return "#{self.name} - #{self.email}"
  end
end
