class PagesController < ApplicationController
  def home
  end

  def search
    @books = Book.all
  end
end
