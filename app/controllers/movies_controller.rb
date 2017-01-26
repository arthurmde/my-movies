class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    id = params['id']
    @movie = Movie.find id
  rescue ActiveRecord::RecordNotFound
    render file: "#{Rails.root}/public/404.html", status: 404
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to action: :show, id: @movie.id
    else
      render :new
    end
  end

  def edit
    id = params['id']
    @movie = Movie.find(id)
  rescue ActiveRecord::RecordNotFound
    render file: "#{Rails.root}/public/404.html", status: 404
  end

  def update
    id = params['id']
    @movie = Movie.find(id)
    @movie.update(movie_params)
    if @movie.save
      redirect_to action: :show, id: @movie.id
    else
      render :edit, id: @movie.id
    end
  rescue ActiveRecord::RecordNotFound
    render file: "#{Rails.root}/public/404.html", status: 404
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :release_date, :description)
  end
end
