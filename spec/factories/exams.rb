# == Schema Information
#
# Table name: exams
#
#  id         :integer          not null, primary key
#  start_date :datetime
#  stop_date  :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :exam do
    start_date { "2023-01-01 10:00:00" }
    stop_date { "2023-01-01 12:00:00" }
  end
end
