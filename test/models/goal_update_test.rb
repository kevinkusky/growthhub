# == Schema Information
#
# Table name: goal_updates
#
#  id              :bigint           not null, primary key
#  goal_id         :bigint           not null
#  progress_update :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require "test_helper"

class GoalUpdateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
