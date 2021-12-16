class Assignment < ApplicationRecord
  belongs_to :platform
  belongs_to :train
  validates :arrival, presence: true
  validates :departure, presence: true
  validate :is_too_long

  def duration
    duration = (self.departure - self.arrival)/60
  end

  def is_too_long
    if self.duration > 20
      errors.add(:duration, "can't be longer than 20 minutes")
    end
  end


end
