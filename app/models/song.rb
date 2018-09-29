class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :release_year, presence: true, if: -> {released == true}
  validates :release_year, numericality: { less_than_or_equal_to: Date.today.year }, if: -> {released == true}

  def same_song
    if song = Song.find_by(title: title)
      if song.release_year = release_year
        errors.add(:title, "same song")
      end
    end
  end
end
