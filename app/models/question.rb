# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  exam_id    :integer          not null
#
# Indexes
#
#  index_questions_on_exam_id  (exam_id)
#
# Foreign Keys
#
#  exam_id  (exam_id => exams.id)
#
class Question < ApplicationRecord
  has_many :answers
  belongs_to :exam
end
