class Discussion < ActiveRecord::Base
validates :user_id, :contact_id, presence: true
belongs_to :user
belongs_to :firm
belongs_to :contact
end
