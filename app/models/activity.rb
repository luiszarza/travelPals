class Activity < ApplicationRecord
  # belongs_to :owner, class_name: "User", foreign_key: :user_id
  belongs_to :user
  alias_attribute :owner, :user
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  has_many :attendees, through: :bookings, source: :user
  validates_presence_of :title, :description, :location, :time, :photos
  validates :description, length: { minimum: 50 }
  geocoded_by :location
  # after_validation :geocode, if: :will_save_change_to_location?
  has_many :comments, dependent: :destroy
end
