class AuthorsController < ApplicationController


  before_action :set_author, only: [ :show ]

  def index
    @available_at = Time.now
    @authors = Author.order(:name).page(params[:page])
  end

  def new
    @author = Author.new
  end

  def show
  end

  private

  def set_author
    @author = Author.find(params[:id])
  end

end