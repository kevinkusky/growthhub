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
require "test_helper"

class AffirmationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
