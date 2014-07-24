# == Schema Information
#
# Table name: web_applications
#
#  id          :integer          not null, primary key
#  name        :string(255)      default(""), not null
#  url         :string(255)      default(""), not null
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  server_id   :integer          default(0), not null
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :web_application do
  end
end
