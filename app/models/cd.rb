class Cd < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :descrpcion, presence: true, length: { maximum: 300}
end
