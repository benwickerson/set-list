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
#  set        :integer
#

require 'test_helper'

class GigTuneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
