class Message < ApplicationRecord
  has_rich_text :Text
  belongs_to :user
  belongs_to :appointment
end
