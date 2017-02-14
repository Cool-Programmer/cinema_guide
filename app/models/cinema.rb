class Cinema < ApplicationRecord
  has_attached_file :featured, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :featured, content_type: /\Aimage\/.*\z/

  has_many :reviews

  validates :name, presence: true,
  			length: {
  				minimum: 2,
  				maximum: 100
  			}

  validates :location, presence: true,
  			length: {
  				minimum: 10,
  			}

  validates :telephone, presence: true,
  			length: {
  				minimum: 2,
  				maximum: 200
  			}

  validates :open_hour, presence: true,
  			length: {
  				minimum: 2,
  				maximum: 10
  			}

  validates :close_hour, presence: true,
  			length: {
  				minimum: 2,
  				maximum: 10
  			}

  validates :open_day, presence: true,
  			length: {
  				minimum: 4,
  				maximum: 10
  			}

  validates :close_day, presence: true,
  			length: {
  				minimum: 4,
  				maximum: 10
  			}


  def self.search(query)
    where("name like ? OR location like ? OR telephone like ?", "%#{query}%", "%#{query}%", "%#{query}%")
  end
end
