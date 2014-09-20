# == Schema Information
#
# Table name: rehersals
#
#  id         :integer          not null, primary key
#  rehersal   :date
#  created_at :datetime
#  updated_at :datetime
#

class Rehersal < ActiveRecord::Base
  has_many :tunes, through: :rehersal_tunes

end
