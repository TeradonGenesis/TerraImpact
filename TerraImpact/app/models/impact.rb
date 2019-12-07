class Impact < ApplicationRecord
    include Friendlyable
    
    validates :impact, presence: :true
    validates :category, presence: :true, uniqueness: {case_sensitive: false}
    
    belongs_to :user
end
