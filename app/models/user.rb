class User < ActiveRecord::Base
    has_many :scripts
    has_secure_password
end
