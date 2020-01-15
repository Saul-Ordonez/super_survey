class QuestionsController < ApplicationController
  def new
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.new
    render :new
  end

  def create
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.new(question_params)
    if @question.save
      redirect_to survey_path(@survey)
    else
      render :new
    end
  end

  def show
    @survey = Survey.find(params[:survey_id])
    @question = Question.find(params[:id])
    render :show
  end

  def edit
    @survey = Survey.find(params[:survey_id])
    @question = Question.find(params[:id])
    render :edit
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to survey_path(@question.survey)
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to survey_path(@question.survey)
  end

  #this always goes at the very bottom

  private
  def question_params
    params.require(:question).permit(:query, :answer1, :answer2, :answer3, :answer_selected)
  end

end
