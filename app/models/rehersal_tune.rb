# == Schema Information
#
# Table name: rehersal_tunes
#
#  id          :integer          not null, primary key
#  rehersal_id :integer
#  tune_id     :integer
#  notes       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class RehersalTune < ActiveRecord::Base
end
