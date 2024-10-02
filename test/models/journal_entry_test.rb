# == Schema Information
#
# Table name: journal_entries
#
#  id           :bigint           not null, primary key
#  title        :string           not null
#  journal_text :text             not null
#  tag          :string           not null
#  user_id      :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class JournalEntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
