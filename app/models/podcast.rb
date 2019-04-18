class Podcast < ApplicationRecord
  validates :name, presence: true
  validates_uniqueness_of :name
  validates :genre, presence: true
  validates :image, presence: true, format: %r{\Ahttps?://}, on: :create

  has_many :episodes, dependent: :destroy
end
