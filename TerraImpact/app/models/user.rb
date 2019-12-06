class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    include Friendlyable
    validates :username, presence: :true, uniqueness: { case_sensitive: false }
    validates :name, presence: :true, uniqueness: { case_sensitive: false }
    validates :description, length: { maximum: 280 }
    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
    
    has_one_attached :avatar
    
    has_many :impacts, dependent: :destroy
end
