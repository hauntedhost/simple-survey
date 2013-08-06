class SurveySubmissionsController < ApplicationController

  def create
    user = User.where(email: params[:user][:email]).first_or_create
    user.responses_attributes = params[:user][:responses_attributes]
    if user.save
      redirect_to thanks_url
    else
      redirect_to error_url
    end
  end

end
