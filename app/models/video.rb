class Video < ApplicationRecord
  validates_presence_of :name, :url

  validates :url, format: { with: /(.m3u8)\z/,
    message: 'extension must be .m3u8' }

  belongs_to :user
end