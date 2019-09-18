class Comment < ApplicationRecord
    belongs_to :movie, optional: true
    belongs_to :user, optional: true 
    
    has_many :likes, dependent: :destroy
    has_many :liking_users, through: :likes, source: :user
end