class Impact < ApplicationRecord
    include Friendlyable
    
    validates :impact, presence: :true, length: { maximum: 280 }
    validates :category, presence: :true, uniqueness: {case_sensitive: false}
    
    belongs_to :user
end
