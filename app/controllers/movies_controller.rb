require 'net/http'
require 'uri'
require 'json'
class MoviesController < ApplicationController
    
    def rank
        movie_top = Movie.top
        @movie_result = movie_top["results"]
        @moive_id = ""
    end

    def index
       @comments = Comment.all.order(created_at: :desc)
    end

    def search
        @search_term = params[:looking_for]
        movie_results = Movie.search(@search_term)
        @movie_results = movie_results["results"]
    end
      

    def show
        @movie_info = Movie.details(params[:id])
        @comment = Comment.new
        @comments = Comment.where(movie_id: params[:id]).order(created_at: :desc)
        flash[:movie_id] = @movie_info["id"]
        flash[:movie_title] = @movie_info["title"]
    end
end