class Wall < ActiveRecord::Base
  has_many :reviews, dependent: :destroy

end
