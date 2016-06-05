class Firm < ActiveRecord::Base

validates :user_id, presence: true
# belongs_to :user
has_many :contacts
has_many :discussions
has_many :discussed_contacts, :through => :disdcussions, :source => :contact

end
