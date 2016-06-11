class Firm < ActiveRecord::Base

validates :user_id, presence: true
belongs_to :user
has_many :contacts, dependent: :destroy
has_many :events, dependent: :destroy
has_many :discussions, dependent: :destroy
has_many :discussed_contacts, :through => :disdcussions, :source => :contact

end
