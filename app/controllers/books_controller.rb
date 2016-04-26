class BooksController < ApplicationController
  before_action :fetch_book, only: [:show, :destroy]

  def index
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @book.destroy
    redirect_to root_path, notice: "Book deleted successfully"
  end

private
  def book_params
    params.require(:book).permit(:title, :description)
  end

  def fetch_book
    @book = Book.find(params[:id])
  end
end
