# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  tag        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Tag < ActiveRecord::Base
  belongs_to :tune

end
