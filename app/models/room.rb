class Room < ApplicationRecord
    belongs_to :user
    has_many :collections
    has_many :colors, through: :collections
end
