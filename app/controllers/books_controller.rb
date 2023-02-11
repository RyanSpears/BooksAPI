class BooksController < ApplicationController

  def index
    @books = Book.all.order('title ASC')
      render json: @books
  end

  def create
    @book = Book.create(book_params)

    render :show, status: :created, location: @book
  end

  def show
    @book = Book.find(params[:id])

    if stale?(last_modified: @book.updated_at)
      render json: @book
    end
  end

  private
    def book_params
      params.requires(:book).permit(:title, :pages, :publisher, :year, :description)
    end
end
