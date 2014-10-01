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

class TuneTag < ActiveRecord::Base
  belongs_to :tune 
  belongs_to :tag

  validates :tune_id, presence: true
  validates :tag_id, presence: true
end
