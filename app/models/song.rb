class Song < ActiveRecord::Base
  has_one :cryptogram
  belongs_to :user

  validates :title, :user_id, :presence => true

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/normal/Aleph.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  has_attached_file :song_audio
  validates_attachment_content_type :song_audio, :content_type => [ 'application/mp3', 'application/x-mp3', 'audio/mpeg', 'audio/mp3', 'audio/x-m4a' ]

  has_attached_file :sheet_music
  validates_attachment_content_type :sheet_music, content_type: /\Aimage\/.*\z/


end
