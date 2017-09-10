class Question < ApplicationRecord
  include HasGravatar

  has_many :answers
  belongs_to :user

end
