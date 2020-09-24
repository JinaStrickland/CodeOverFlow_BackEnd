class Answer < ApplicationRecord
  belongs_to :solution, polymorphic: true
end
