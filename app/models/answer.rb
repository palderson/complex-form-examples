class Answer < ActiveRecord::Base
  belongs_to :question
  attr_accessible :answers_attributes, :content
end
