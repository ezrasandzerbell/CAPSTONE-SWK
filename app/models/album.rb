class Album < ActiveRecord::Base
  has_many :songs
  belongs_to :user

  validates :title, :user_id, :avatar, :presence => true
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
