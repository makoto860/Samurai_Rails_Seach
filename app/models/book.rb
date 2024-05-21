class Book < ApplicationRecord
  def self.search(search)
    if search != ""
      Book.where(['title LIKE(?) OR content LIKE(?)', "#{search}%", "#{search}%"])
    else
      book.all
    end
  end
end
