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
#

class WebApplication < ActiveRecord::Base
  validates :name, :url, presence: true
  scope :id_is, -> ( id ) { where( id: id ).first }

  paginates_per 5
end
