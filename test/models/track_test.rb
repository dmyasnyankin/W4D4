# == Schema Information
#
# Table name: tracks
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  user_id    :integer          not null
#  band_id    :integer          not null
#  album_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TrackTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
