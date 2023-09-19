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
class Score < ApplicationRecord
  belongs_to :user
  belongs_to :exam

  # @return [ActiveRecord::Associations::CollectionProxy, ActiveRecord::QueryMethods::WhereChain]
  def answers
    exam.answers.where(user: user)
  end

  # @return [Boolean, nil]
  def update_grade!
    update(grade: answers.sum(:grade))
  end
end
