class Photo < ActiveRecord::Base
  validates :source, presence: true
  validates :caption, presence: true
end
