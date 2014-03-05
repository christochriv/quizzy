class ChallengesController < ApplicationController
  before_action :set_challenge, only: [:show, :edit, :update, :destroy]

  def index
    @challenges = Challenge.all
  end

  def show
    @challenge.add_points(@challenge)
  end

  def new
    @challenge = current_user.challenges.create
    answered_question_ids = ChallengeStep.where(answerer: current_user).collect {|p| [ p.question_id ] }.flatten.uniq
    @available_questions = Question.all.where.not(id: answered_question_ids).limit(2)

    @available_questions.each do |question|
      @challenge.challenge_steps.create(question: question, answerer: current_user)
    end

    redirect_to [@challenge, @challenge.challenge_steps.first]

  end

  def edit
  end

  def create
    # Creation of Invite Key
    # end

    respond_to do |format|
      if @challenge.save
        format.html { redirect_to @challenge, notice: 'Challenge was successfully created.' }
        format.json { render action: 'show', status: :created, location: @challenge }
      else
        format.html { render action: 'new' }
        format.json { render json: @challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @challenge.update(challenge_params)
        format.html { redirect_to @challenge, notice: 'Challenge was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @challenge.destroy
    respond_to do |format|
      format.html { redirect_to challenges_url }
      format.json { head :no_content }
    end
  end

  private

    def set_challenge
      @challenge = Challenge.find(params[:id])
    end

    def challenge_params
      params.require(:challenge).permit(:champion, :invite_key, :score)
    end
end
