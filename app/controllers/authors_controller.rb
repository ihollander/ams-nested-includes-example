class AuthorsController < ApplicationController
  def index
    authors = Author.all
    # without include
    # render json: authors

    # with include **
    # render json: authors, include: '**'
    
    # with specific include
    render json: authors, include: ['posts', 'posts.comments']
  end
end
