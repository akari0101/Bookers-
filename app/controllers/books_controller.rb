class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(list_params)
    book.save
    redirect_to '/top'
  end

  def index
    @books = Book
  end

  def show
  end

  def edit
  end

  private
  def book_params
    params.require(:list).permit(:title, :body)
  end
end
