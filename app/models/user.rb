class User < ApplicationRecord
    has_many :rooms
    # validates_uniqueness_of :username
    # has_secure_password
end
