class Chatroom < ApplicationRecord
  belongs_to :requester, class_name: "User", foreign_key: "user_id"
  belongs_to :recipient, class_name: "User"
  has_many :messages, dependent: :destroy
end
