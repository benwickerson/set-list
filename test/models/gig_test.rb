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

require 'test_helper'

class GigTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
