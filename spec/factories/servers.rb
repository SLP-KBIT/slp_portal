# == Schema Information
#
# Table name: servers
#
#  id                   :integer          not null, primary key
#  name                 :string(255)      default(""), not null
#  description          :text
#  ip_address           :string(255)      default(""), not null
#  static_ip_flag       :boolean          default(FALSE), not null
#  name_resolution_flag :boolean          default(FALSE), not null
#  outside_open_ports   :string(255)      default(""), not null
#  created_at           :datetime
#  updated_at           :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :server do
  end
end
