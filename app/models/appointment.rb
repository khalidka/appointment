class Appointment < ApplicationRecord
  has_rich_text :Description
  belongs_to :user
  has_many :messages
end
