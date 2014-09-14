class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  validates_presence_of :title
  validates_presence_of :price
  validates_presence_of :description

  validates_format_of :price, with: /\A([0-9]*).([0-9]{0,2})\z/i

  def average_rating
   av = 0
   reviews.each do |r|
    av += r.rating
   end
   a = av.to_f / reviews.size
   a.round(2)
  end

end
