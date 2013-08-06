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
  attr_accessible :email, :ip_address

  has_many :questions_answered, 
    :class_name => "QuestionResponse",
    :foreign_key => :user_id

  has_many :surveys_completed,
    :through => :questions_answered, 
    :source => :survey,
    :uniq => true

end
