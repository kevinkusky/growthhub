# == Schema Information
#
# Table name: users
#
#  id            :bigint           not null, primary key
#  email         :string           not null
#  name          :string           not null
#  token         :string           not null
#  refresh_token :string
#  provider      :string
#  uid           :string           not null
#  last_login_at :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
