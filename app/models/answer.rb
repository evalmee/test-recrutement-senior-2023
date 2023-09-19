# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  grade       :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer          not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_answers_on_question_id  (question_id)
#  index_answers_on_user_id      (user_id)
#
# Foreign Keys
#
#  question_id  (question_id => questions.id)
#  user_id      (user_id => users.id)
#
class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user

  after_create :update_grade!

  # @return [ActiveRecord::Relation<Score>]
  def score
    Score.where(user: user, exam: question.exam)
  end

  # @return [Boolean, nil
  def update_grade!
    update(grade: calculate_grade)
    score.update_grade!
  end

  # This is a dummy function faking the real score calculation
  # Don't update it
  # @return [Float]
  def calculate_grade
    sleep 0.5
    rand(0.0..1.0).round(1).to_f
  end
end
