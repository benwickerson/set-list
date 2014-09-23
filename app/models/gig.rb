# == Schema Information
#
# Table name: gigs
#
#  id         :integer          not null, primary key
#  gig        :string(255)
#  gig_date   :date
#  created_at :datetime
#  updated_at :datetime
#

class Gig < ActiveRecord::Base
  has_many :gig_tunes
  has_many :tunes, through: :gig_tunes
  has_many :notes, as: :link

end
