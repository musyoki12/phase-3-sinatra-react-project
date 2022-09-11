class User < ActiveRecord::Base
    has_many :requests
    has_many :reviews
end