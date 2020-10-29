class Color < ApplicationRecord
    has_many :collections
    has_many :rooms, through: :collections 
end
