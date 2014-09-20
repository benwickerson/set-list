# == Schema Information
#
# Table name: gig_tunes
#
#  id         :integer          not null, primary key
#  gig_id     :integer
#  tune_id    :integer
#  notes      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  position   :integer
#

class GigTune < ActiveRecord::Base
  belongs_to :gig
  belongs_to :tune

  validates :gig_id, presence: true
  validates :tune_id, presence: true

end
