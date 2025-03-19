class UpdatePostsToHaveBodyInsteadOfPost < ActiveRecord::Migration[8.0]
  def change
    rename_column :posts, :post, :body
  end
end
