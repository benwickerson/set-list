# == Schema Information
#
# Table name: videos
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#  comment    :text
#

class Video < ActiveRecord::Base
  validates :url, uniqueness: true

end
