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

require 'test_helper'

class RehersalTuneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
