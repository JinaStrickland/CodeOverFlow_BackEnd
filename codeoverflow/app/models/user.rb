class User < ApplicationRecord
  has_secure_password
  
  belongs_to :company
  has_many :questions, dependent: :delete_all
  has_many :answers, dependent: :delete_all
  accepts_nested_attributes_for :answers 
  accepts_nested_attributes_for :questions

  
end
