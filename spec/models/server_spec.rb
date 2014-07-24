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

require 'rails_helper'

RSpec.describe Server, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
