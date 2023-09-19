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
FactoryBot.define do
  factory :question do
    # any attributes if needed
  end
end
