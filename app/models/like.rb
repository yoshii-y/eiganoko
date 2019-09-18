class Like < ApplicationRecord
    belongs_to :comment, counter_cache: :likes_count
    belongs_to :user
end
