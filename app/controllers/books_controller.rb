class BooksController < ApplicationController
  def index
  end

  @book = Book.find(params:[id])
end