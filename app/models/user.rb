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

class User < ApplicationRecord
  has_many :articles

  validates :firstname, :lastname, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 50},
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

end
