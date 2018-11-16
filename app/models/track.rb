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

class Track < ApplicationRecord
  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  belongs_to :album,
    primary_key: :id,
    foreign_key: :album_id,
    class_name: :Album

  belongs_to :band,
    primary_key: :id,
    foreign_key: :band_id,
    class_name: :Band

end
