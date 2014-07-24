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

require 'rails_helper'

RSpec.describe WebApplication, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
