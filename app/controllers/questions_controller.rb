class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers.order(created_at: :desc)
    # p request, 'request object'
    # @answers = Answer.order(created_at: :desc).all
  end

  def create
    @new_question = Question.new(question_params)
    if @new_question.save
      flash[:success] = "Question successfully saved"
      redirect_to root_path
    else
      flash.now[:error] = "Error saving question. Please try again"
      render 'new'
    end
  end

  # make questions_params a private method which accepts only the necessary fields from the params
  private

  def question_params
    params.require(:question).permit(:body, :user_id)
  end
end
