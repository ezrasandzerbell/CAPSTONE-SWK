class Song < ActiveRecord::Base
  has_one :cryptogram
  belongs_to :user

  validates :title, :user_id, :presence => true
end
