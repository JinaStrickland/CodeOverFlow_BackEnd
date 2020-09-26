class User < ApplicationRecord
  has_secure_password
  
  belongs_to :company
  has_many :questions
  has_many :answers
  accepts_nested_attributes_for :answers 
  accepts_nested_attributes_for :questions

  
end
