class Student < ApplicationRecord
    has_many_attached :files
    has_one_attached :photo
end
