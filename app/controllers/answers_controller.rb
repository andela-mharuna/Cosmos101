class AnswersController < ApplicationController
  def show
  end

  def create
    # question = Question.find(params[:answer][:question_id])
    @answer = Answer.new(answer_params)
    # MainMailer.notify_question_author(answer).deliver_now

    # session[:current_user_email] = answer_params[:email]

    if @answer.save
      redirect_back(fallback_location: root_path)
    end
  end

  # make answer_params a private method which only accepts only the necessary fields from the params
  private

  def answer_params
    params.require(:answer).permit(:body, :user_id, :question_id)
  end
end
