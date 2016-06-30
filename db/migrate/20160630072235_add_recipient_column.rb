class AddRecipientColumn < ActiveRecord::Migration[5.0]
  def change

      add_column :gifts, :recipient_id, :integer

  end
end
