class Fight < ApplicationRecord
    belongs_to :user
    has_many :sequences
end
