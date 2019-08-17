# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  firstname  :string
#  lastname   :string
#  email      :string
#  birthday   :datetime
#  race       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
