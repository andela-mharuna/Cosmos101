class Answer < ApplicationRecord
  include HasGravatar

  belongs_to :question
  belongs_to :user

end
