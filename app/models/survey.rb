# == Schema Information
#
# Table name: surveys
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Survey < ActiveRecord::Base
  attr_accessible :name, :questions_attributes

  has_many :questions
  has_many :user_responses, :through => :questions
  has_many :users_responded, :through => :questions, :uniq => true

  accepts_nested_attributes_for :questions

end
