class Chatroom < ApplicationRecord
  belongs_to :user
  belongs_to :recipient, class_name: "User"
  has_many :messages
end
