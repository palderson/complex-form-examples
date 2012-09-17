class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :answers, :dependent => :destroy
  attr_accessible :content, :name, :surveys_attributes, :name, :answers_attributes, :question_id, :content
  accepts_nested_attributes_for :answers, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
