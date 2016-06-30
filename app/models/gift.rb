class Gift < ApplicationRecord
   belongs_to :user, :foreign_key => "user_id", :class_name => "User"
   # belongs_to :recipient, :foreign_key => "recipient_id", :class_name => "User"

   # validates_presence_of :gift_desc, :quantity
end
