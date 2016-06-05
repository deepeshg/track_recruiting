class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :firms
  has_many :contacts
  has_many :discussions
  has_many :discussed_contacts, :through => :discussions, :source => :contact

end
