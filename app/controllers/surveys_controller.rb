class SurveysController < ApplicationController

  def index
    @surveys = Survey.all
  end

  def show
    @survey = Survey.includes(:questions).find(params[:id])
  end

  def edit
    @survey = Survey.includes(:questions).find(params[:id])
  end

  def update
    survey = Survey.find(params[:id])
    if survey.update_attributes(params[:survey])
      redirect_to survey_url(survey)
    else
      redirect_to edit_survey_url(survey)
    end
  end
end
