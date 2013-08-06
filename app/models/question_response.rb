# == Schema Information
#
# Table name: question_responses
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  question_id :integer
#  response    :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class QuestionResponse < ActiveRecord::Base
  attr_accessible :user_id, :question_id, :response

  belongs_to :user
  belongs_to :question
  has_one :survey, :through => :question

end
