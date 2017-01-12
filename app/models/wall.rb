class Wall < ActiveRecord::Base
  has_many :review
  validates :content, length: { in: 7..247 }
end
