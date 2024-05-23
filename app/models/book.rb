class Book < ApplicationRecord
  def self.search(search)
    if search != ""
      Book.where(['title LIKE(?) OR content LIKE(?)', "%#{search}%", "%#{search}%"])
    else
      Book.includes(:book).order('created_at DESC')
    end
  end
end
