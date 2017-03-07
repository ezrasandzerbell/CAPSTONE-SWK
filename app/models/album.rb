class Album < ActiveRecord::Base
  has_many :songs
  belongs_to :user

  validates :title, :user_id, :presence => true

end
