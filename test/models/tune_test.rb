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

require 'test_helper'

class TuneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
