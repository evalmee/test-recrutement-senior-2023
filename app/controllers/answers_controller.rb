class AnswersController < ApplicationController
  def create
    Answer.create(permitted_params.merge({user: current_user}))
    head :ok
  end
  
  private

  def permitted_params
    params.permit(:question_id)
  end

  
  # Dummy method to fake the current user
  # @return [User]
  def current_user
    User.first
  end
end
