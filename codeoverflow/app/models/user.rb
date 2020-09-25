class User < ApplicationRecord
  belongs_to :company
  has_many :questions
  has_many :answers
  accepts_nested_attributes_for :questions, :answers 
end
