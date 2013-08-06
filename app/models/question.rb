# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  survey_id  :integer
#  label      :string(255)
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ActiveRecord::Base
  attr_accessible :label, :position, :survey_id

  belongs_to :survey

  has_many :user_responses, 
    :class_name => "QuestionResponse", 
    :foreign_key => :question_id

  has_many :users_responded, 
    :through => :user_responses, 
    :source => :user

end
