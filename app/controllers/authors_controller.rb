# app/controllers/authors_controller.rb
class AuthorsController < ApplicationController

  def index
    @authors = Author.includes(:books).order('name ASC')

    render json: @authors.to_json(include: [:books])
  end

  def create
    @author = Author.create!(author_params)

    render :show, status: :created, location: @author
  end

  def show
    @author = Author.find(params[:id])

    if stale?(last_modified: @author.updated_at)
      render json: @author
    end
  end

  private

  # remove `created_by` from list of permitted parameters
  def author_params
    params.requires(:author).permit(:name)
  end
end