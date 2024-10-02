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
class JournalEntry < ApplicationRecord
end
