class User < ApplicationRecord
  belongs_to :company
  has_many :questions
  has_many :answers
end
