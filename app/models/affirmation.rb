# == Schema Information
#
# Table name: affirmations
#
#  id          :bigint           not null, primary key
#  user_id     :bigint           not null
#  affirmation :text             not null
#  tag         :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Affirmation < ApplicationRecord
  belongs_to :user
end
