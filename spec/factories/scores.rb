# == Schema Information
#
# Table name: scores
#
#  id         :integer          not null, primary key
#  grade      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  exam_id    :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_scores_on_exam_id  (exam_id)
#  index_scores_on_user_id  (user_id)
#
# Foreign Keys
#
#  exam_id  (exam_id => exams.id)
#  user_id  (user_id => users.id)
#
FactoryBot.define do
  factory :score do
    grade { 0 }
    association :user
    association :exam
  end
end
