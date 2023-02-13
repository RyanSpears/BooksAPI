# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    @books = Book.includes(:author).order('title ASC')
    render json: @books.to_json(include: [:author])
  end

  def create
    @book = Book.create(book_params)

    render :show, status: :created, location: @book
  end

  def show
    @book = Book.find(params[:id])

    return unless stale?(last_modified: @book.updated_at)

    render json: @book
  end

  private

  def book_params
    params.requires(:book).permit(:title, :pages, :publisher, :year, :description)
  end
end
