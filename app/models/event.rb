class Event < ActiveRecord::Base
  validates :user_id, :firm_id, presence: true
  belongs_to :user
  belongs_to :firm
end
