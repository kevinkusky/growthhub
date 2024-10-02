# == Schema Information
#
# Table name: todos
#
#  id            :bigint           not null, primary key
#  title         :string           not null
#  description   :text             not null
#  due_date      :date             not null
#  complete_date :date
#  auto_repeat   :boolean          default(FALSE)
#  priority      :integer          default(0)
#  user_id       :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Todo < ApplicationRecord
end
