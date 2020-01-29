class Video < ApplicationRecord
  validates_presence_of :name, :url

  belongs_to :user
end