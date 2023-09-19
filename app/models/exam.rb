# == Schema Information
#
# Table name: exams
#
#  id         :integer          not null, primary key
#  start_date :datetime
#  stop_date  :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Exam < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :answers, through: :questions
end
