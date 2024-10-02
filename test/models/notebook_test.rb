# == Schema Information
#
# Table name: notebooks
#
#  id         :bigint           not null, primary key
#  title      :string
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class NotebookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
