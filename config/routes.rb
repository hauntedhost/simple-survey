SurveyApp::Application.routes.draw do

  root :to => "surveys#index"

  resources :surveys, :only => [:index, :show, :edit, :update]
  resources :survey_submissions, :only => [:create]

  get "thanks" => "static_pages#thanks"
  get "error" => "static_pages#error"

end
