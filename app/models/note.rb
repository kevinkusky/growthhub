# == Schema Information
#
# Table name: notes
#
#  id          :bigint           not null, primary key
#  title       :string
#  content     :text
#  notebook_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Note < ApplicationRecord
  belongs_to :notebook
end
