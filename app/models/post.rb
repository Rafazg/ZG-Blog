class Post < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5, maximum: 50 }
    validates :body, presence: true, length: { minimum: 10, maximum: 1000 }
    validates :resume, presence: true, length: {minimum: 10,  maximum: 8000}
    has_and_belongs_to_many :tags
end
