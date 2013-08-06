# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  ip_address :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :ip_address, :responses_attributes

  has_many :responses, 
    :class_name => "QuestionResponse",
    :foreign_key => :user_id

  has_many :surveys_completed,
    :through => :responses, 
    :source => :survey,
    :uniq => true

  accepts_nested_attributes_for :responses

end
