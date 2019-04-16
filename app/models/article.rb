class Article < ActiveRecord::Base

  validates :title, presence: true, lenght: { minimum: 3, maximum: 50}
  valdidates :description, presence: true, lenght: { minimum: 10, maximum: 200}

end