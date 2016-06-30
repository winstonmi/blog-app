class UpdatePostTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :posts, :gifts

    rename_column :gifts, :title, :gift_desc

    remove_column :gifts, :body, :text
    add_column :gifts, :quantity, :integer

  end
end
