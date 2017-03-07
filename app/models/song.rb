class Song < ActiveRecord::Base
  has_many :riffs
  belongs_to :album

  validates :title, :album_id, :presence => true


end
