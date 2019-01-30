class Comment < ApplicationRecord
    belongs_to :link
    belongs_to :user
    has_many :subcomments
end
