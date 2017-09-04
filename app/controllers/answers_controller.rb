class AnswersController < ApplicationController
  def show
  end

  def create
    question = Question.find(params[:answer][:question_id])
    question.answers.create(answer_params)
    session[:current_user_email] = answer_params[:email]

    # Answer.create(answer_params)
    # redirect_to question_path(params[:answer][:question_id])

    redirect_to question
  end

  # make answer_params a private method which only accepts only the necessary fields from the params
  private

  def answer_params
    params.require(:answer).permit(:name, :email, :body)
  end
end
