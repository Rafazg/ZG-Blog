class AddResumeToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :resume, :text
  end
end
