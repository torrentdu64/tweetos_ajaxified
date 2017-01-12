class Review < ActiveRecord::Base
  belongs_to :wall
  validates :content, length: { in: 7..247 }
end
