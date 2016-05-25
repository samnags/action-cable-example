class Chatroom < ActiveRecord::Base
  has_many :messages, dependent: :destroy
  has_many :users, through: :messages

  validates :topic, presence: true, uniqueness: true, case_sensitive: false

end
