class CreateSearchResults < ActiveRecord::Migration[5.0]
  def change
    create_table :search_results do |t|
      t.belongs_to :search, null: false
      t.string :comment

      t.timestamps
    end
  end
end
