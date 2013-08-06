SurveyApp::Application.routes.draw do

  resources :surveys, :only => [:index, :show]
  resources :survey_submissions, :only => [:create]

  get "thanks" => "static_pages#thanks"
  get "error" => "static_pages#error"

end
