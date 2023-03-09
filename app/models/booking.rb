class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  validates :user, uniqueness: { scope: :activity }
  validates :activity, uniqueness: { scope: :user }
end
