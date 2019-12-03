class Impact < ApplicationRecord
    include Friendlyable
    
    validates :impact, presence: :true
    validates :category, presence: :true
    
    belongs_to :user
end
