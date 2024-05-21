class Book < ApplicationRecord
  def self.search(search)
    if search.present?
      where('title ILIKE ? OR content ILIKE ?', "%#{search}%", "%#{search}%")
    else
      all
    end
  end
end
