class Activity < ApplicationRecord
  # belongs_to :owner, class_name: "User", foreign_key: :user_id
  belongs_to :user
  alias_attribute :owner, :user
  has_many_attached :photos
  has_many :bookings
  has_many :attendees, through: :bookings, source: :user
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
