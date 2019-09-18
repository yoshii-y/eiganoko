class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def search
    @search_term = params[:looking_for]
    @movie_results = Movie.search(@search_term)
  end

  def configure_permitted_parameters
    added_attrs = [:name, :profile, :gender, :movie1_title, :movie2_title, :movie3_title, :movie1_text, :movie2_text, :movie3_text]
    devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
    devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)
  end


end
