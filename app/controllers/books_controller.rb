class BooksController < ApplicationController

  before_action :set_book, only: [ :show, :edit, :update, :destroy ]
  before_action :set_available_time, only: [:index, :search]

  def index
    @books = Book.order(:title).page(params[:page])
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book, notice: "#{@book.title} was created!"
    else
      render :new
    end
  end

  def show
    @author = @book.author
  end

  def new
    @book = Book.new
  end

  def overdue
    #TODO: Figure out which books are overdue and return them to display on the form.
  end

  def search
    #TODO: Implement Search
    @books = Book.order(:title).page(params[:page])

    #@books = Book.search(params[:search]) THIS didn't work

  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to @book, notice: "#{@book.title} was updated!"
    else
      render :new
    end
  end


  def destroy
    @book.destroy
    redirect_to books_url
  end




  private

  def book_params
    params.require(:book).permit(:title, :pages, :isbn, :author, :author_id, :genre, :abstract, :image_cover_url, :created_at, :updated_at, :published_on, :total_in_library)
  end

  def set_book
    @book = Book.find(params[:id])
  end

  def set_available_time
    @available_at = Time.now
  end

end