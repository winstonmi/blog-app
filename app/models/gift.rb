class Gift < ApplicationRecord
  belongs_to :user

  validates_presence_of :gift_desc, :quantity
end
