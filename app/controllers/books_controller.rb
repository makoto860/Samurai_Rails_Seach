class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def confirm
  end

  def create
    @book = Book.new(params.require(:book).permit(:title, :address, :content))
    if @book.save
      flash[:notice] = "ブックを新規登録しました"
      redirect_to :root
    else
      render "new"
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(params.require(:book).permit(:title, :address, :content))
      flash[:notice] = "ブックIDが「#{@book.id}」の情報を更新しました"
      redirect_to :root
    else
      render "edit"
    end 
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "ブックを削除しました"
    redirect_to :root
  end
  
  private
    def search
      @books = Book.search(params[:keyword])
      render 'index'
    end
end
