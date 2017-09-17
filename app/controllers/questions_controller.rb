class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])

    # p request, 'request object'
    # @answers = Answer.order(created_at: :desc).all
  end

  def create
    Question.create(question_params)
    session[:current_user_email] = question_params[:email]
    redirect_to root_path
  end

  # make questions_params a private method which only accepts only the necessary fields from the params
  private

  def question_params
    params.require(:question).permit(:name, :email, :body)
  end
end
