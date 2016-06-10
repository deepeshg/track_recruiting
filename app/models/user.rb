class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :firms, dependent: :destroy
  has_many :contacts, dependent: :destroy
  has_many :discussions, dependent: :destroy
  has_many :discussed_contacts, :through => :discussions, :source => :contact, dependent: :destroy

end
