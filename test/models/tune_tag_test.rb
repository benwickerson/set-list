# == Schema Information
#
# Table name: tune_tags
#
#  id         :integer          not null, primary key
#  tune_id    :integer
#  tag_id     :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class TuneTagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
