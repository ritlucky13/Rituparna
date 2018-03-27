class User < ApplicationRecord
    validates :username,presence: true,length: {minimum:6,maximum:30}
    validates :password,presence: true,length: {minimum:8,maximum:20}
end