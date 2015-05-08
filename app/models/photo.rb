class Photo < ActiveRecord::Base
  validates :source, presence: true
  validates :caption, presence: true

  def user
    # return the associated user object
    return User.find(self.user_id)
  end

  def comments
    return Comment.where(:photo_id => self.id)
  end


  def big_caption
    uppercase = self.caption.upcase
    chomped = uppercase.chomp
    return chomped
  end

  def lanny
    return "Ladies and gentlemen... Lanny Bose : ("
  end
end
