class Video < ActiveRecord::Base
  validates :url, uniqueness: true

end
