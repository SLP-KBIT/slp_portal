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

class Server < ActiveRecord::Base
  validates :name, :ip_address, presence: true
  scope :id_is, -> ( id ) { where( id: id ).first }
  has_many :web_applications

  paginates_per 5

  def static_ip?
    static_ip_flag
  end

  def name_resolution?
    name_resolution_flag
  end

  def self.search( keyword )
    if keyword
      Server.where( ['name LIKE ?', "%#{keyword}%"] )
    else
      Server.all
    end
  end
end
