class Author < ActiveRecord::Base
  #has_many :books
  validates :name, :dob, :nationality, :biography, :image_cover_url
  validates :biography, {length: minimum: 15}
end
