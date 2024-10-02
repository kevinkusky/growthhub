# == Schema Information
#
# Table name: likes
#
#  id           :bigint           not null, primary key
#  user_id      :bigint           not null
#  content_type :string           not null
#  content_id   :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Like < ApplicationRecord
  belongs_to :user
end
