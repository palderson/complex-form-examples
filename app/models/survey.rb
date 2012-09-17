class Survey < ActiveRecord::Base
  has_many :questions, :dependent => :destroy
  attr_accessible :surveys_attributes, :name, :questions_attributes, :answers_attributes, :question_id, :content
  accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
