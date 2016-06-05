class Contact < ActiveRecord::Base

validates :user_id, presence: true
validates :firm_id, presence: true
belongs_to :user
belongs_to :firm
has_many :discussions
end
