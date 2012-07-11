# == Schema Information
#
# Table name: addresses
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  surname    :string(255)
#  phoneNr    :string(255)
#  address    :text
#  created_at :datetime
#  updated_at :datetime
#

class Address < ActiveRecord::Base
  attr_accessible :name, :surname, :phoneNr, :address
 
  validates :name,  :presence => true
  validates :surname, :presence => true
  validates :phoneNr, :presence =>true,
			           :length => { :minimum => 10 }
  validates :address, :presence => true

  def Address.search( q )
    Address.where( 'name LIKE ? OR surname LIKE ?', "%#{q}%", "%#{q}%" )
  end
end
