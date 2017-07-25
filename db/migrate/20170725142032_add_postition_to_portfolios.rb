class AddPostitionToPortfolios < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolios, :postion, :integer
  end
end
