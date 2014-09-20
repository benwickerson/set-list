# == Schema Information
#
# Table name: tunes
#
#  id         :integer          not null, primary key
#  tune       :string(255)
#  vocal      :boolean
#  key        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Tune < ActiveRecord::Base
  has_many :gigs, through: :gig_tunes
  has_many :rehersals, through: :rehersal_tunes

end
