class MoviesController < ApplicationController
  def index
    if params[:query].present?
      # PG SEARCH
      # @results = Movie.search_by_title_and_synopsis(params[:query])

      # Multisearch (looking for both movies and TV shows)
      @results = PgSearch.multisearch(params[:query])

      # ACTIVE RECORD APPROACH

      # sql_query = <<-SQL
      #   movies.title @@ :q
      #   OR movies.synopsis @@ :q
      #   OR directors.first_name @@ :q
      #   OR directors.last_name @@ :q
      # SQL
      # @results = Movie.joins(:director).where(sql_query, q: "%#{params[:query]}%")
      # # Director.joins(:movies)
    else
      @results = Movie.all
    end
  end
end
