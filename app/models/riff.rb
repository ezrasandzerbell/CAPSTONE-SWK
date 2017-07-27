class Riff < ActiveRecord::Base
  has_one :cryptogram
  belongs_to :song

  validates :title, :song_id, :presence => true

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "https://static1.squarespace.com/static/540e82e7e4b0a78038e44eee/t/59793242e6f2e1264328677b/1501114965952/?format=750w"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  has_attached_file :song_audio
  validates_attachment_content_type :song_audio, :content_type => [ 'application/mp3', 'application/x-mp3', 'audio/mpeg', 'audio/mp3', 'audio/x-m4a', 'audio/wav' ]

  has_attached_file :sheet_music, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "trebleclef.jpg"
  validates_attachment_content_type :sheet_music, content_type: /\Aimage\/.*\z/


end
