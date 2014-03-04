class AnswersSetsController < ApplicationController
  before_action :set_question
  before_action :set_answers_set, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @answers_set = AnswersSet.new
  end

  def create
    @answers_set = AnswersSet.new(answers_set_params)

    respond_to do |format|
      if @answers_set.save
        format.html { redirect_to questions_path }
        format.json { render action: 'show', status: :created, location: @answers_set }
      else
        format.html { render action: 'new' }
        format.json { render json: answers_set.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if answers_set.update(answers_set_params)
        redirect_to questions_path
      else
        format.html { render action: 'edit' }
        format.json { render json: answers_set.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    answers_set.destroy
    respond_to do |format|
      redirect_to questions_path
    end
  end

  private

    def set_question
      @question = Question.find(params[:question_id])
    end

    def set_answers_set
      answers_set = AnswersSet.find(params[:id])
    end

    def answers_set_params
      params.require(:answers_set).permit(:question_id, :good_answer, :answer1, :answer2, :answer3)
    end
end
