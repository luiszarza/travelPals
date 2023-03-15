class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
  has_many :organized_activities, class_name: "Activity", foreign_key: :user_id
  has_many :bookings, dependent: :destroy
  has_many :attending_activities, through: :bookings, source: :activity
  # validates :name, presence: true
  # validates :bio, presence: true
  # validates :age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 18 }
  # validates :photo, presence: true
  # has_many :chatrooms
  has_many :chatrooms_as_recipient, class_name: "Chatroom", foreign_key: :recipient_id
  has_many :comments, dependent: :destroy

  def chatrooms
    Chatroom.where(user_id: id).or(Chatroom.where(recipient_id: id))
  end
end
