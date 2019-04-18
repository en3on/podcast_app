class Episode < ApplicationRecord
  validates :title, presence: true
  validates :show_notes, presence: true, length: { maximum: 100 }
  validates :mp3_file, presence: true, format: /\.mp3\Z/, on: :create
  validates :rating, presence: true

end
