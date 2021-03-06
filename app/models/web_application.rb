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

class WebApplication < ActiveRecord::Base
  validates :name, :url, presence: true
  scope :id_is, -> ( id ) { where( id: id ).first }
  belongs_to :server

  paginates_per 8

  def self.search( keyword )
    if keyword
      WebApplication.where( ['name LIKE ?', "%#{keyword}%"] )
    else
      WebApplication.all
    end
  end
end
