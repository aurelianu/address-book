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

require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
